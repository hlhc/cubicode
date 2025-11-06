import 'dart:async';
import 'dart:math';

import 'package:async/async.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:blocky/blocky.dart';
import 'package:blocky/src/definitions/var.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

/// The runtime engine for executing Blocky programs.
///
///! NOT READY FOR PRODUCTION USE.
class Runtime extends Stream<String> {
  Runtime() {
    _controller = StreamController();
    _stream = _controller.stream.asBroadcastStream();
  }

  final AudioPlayer player = AudioPlayer();
  CancelableOperation<dynamic>? _cancelableOperation;
  late final StreamController<String> _controller;
  late final Stream<String> _stream;
  bool _running = false;

  @override
  StreamSubscription<String> listen(
    void Function(String event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  bool get isRunning {
    return _running;
  }

  bool get isNotRunning {
    return !_running;
  }

  bool get isCompleted {
    return _cancelableOperation?.isCompleted ?? true;
  }

  bool get isCancelled {
    return _cancelableOperation?.isCanceled ?? false;
  }

  Map<int, BlockyVar> _vars = {};

  void _cleanup() {
    _vars = {};
    _running = false;
  }

  void writeTerminal(String str) {
    _controller.add('$str\r\n');
  }

  Future<void> abort() async {
    return _cancelableOperation?.cancel();
  }

  Future<void> execute(BlockyProgram program) async {
    _cancelableOperation =
        CancelableOperation.fromFuture(_execute(program), onCancel: _cleanup);
    await _cancelableOperation!.value;
  }

  Future<void> _execute(BlockyProgram program) async {
    if (program.version != '2023-11-18') {
      writeTerminal(
        'Error: Program version ${program.version} not supported.',
      );
      return;
    }

    final blocks = program.blocks;
    _cleanup();

    _running = true;
    var i = 0;
    // It should not be a large loop,
    // We should consider some parallel execution in the future.
    // Also the computation should be done in a separate isolate.
    // But for now, I just keep it simple due to time limits.
    while (i < blocks.length) {
      try {
        final block = blocks[i];
        final blockDef = blockyBlockDefs
            .firstWhereOrNull((blk) => blk.action == block.action);
        final action = block.action;
        final args = block.args;
        dynamic result;

        if (blockDef == null) {
          writeTerminal("Error: '$action' not found, please try again later.");
          break;
        }

        if (action == BlockyBlockAction.textPrint) {
          final valType = args['valType'];
          if (valType == 'text') {
            final value = args['text'];
            writeTerminal(value.toString());
          } else if (valType == 'var') {
            final key = args['var'];
            final str = _vars[key];
            if (str == null) {
              writeTerminal("Error: Variable '$key' not found");
              break;
            } else {
              if (str.type == BlockyLiteralType.num) {
                writeTerminal(str.value.toString());
              } else if (str.type == BlockyLiteralType.str) {
                writeTerminal(str.value.toString());
              } else if (str.type == BlockyLiteralType.bool) {
                writeTerminal(str.value.toString());
              } else if (str.type == BlockyLiteralType.map) {
                writeTerminal(str.value.toString());
              } else {}
            }
          }
        } else if (action == BlockyBlockAction.mathCompute) {
          final func = args['func'];
          final v1 = args['var1'];
          final v2 = args['var2'];
          final save = args['save'];
          final var1 = _vars[v1 ?? ''];
          final var2 = _vars[v2 ?? ''];

          if (var1 == null) {
            writeTerminal('Error: Variable $v1 not found.');
            break;
          }

          if (var2 == null) {
            writeTerminal('Error: Variable $v2 not found.');
            break;
          }

          if (func == 'plus') {
            // ignore: avoid_dynamic_calls
            result = var1.value + var2.value;
          } else if (func == 'minus') {
            // ignore: avoid_dynamic_calls
            result = var1.value - var2.value;
          } else if (func == 'multiply') {
            // ignore: avoid_dynamic_calls
            result = var1.value * var2.value;
          } else if (func == 'divide') {
            // ignore: avoid_dynamic_calls
            result = var1.value / var2.value;
          } else if (func == 'modulo') {
            // ignore: avoid_dynamic_calls
            result = var1.value % var2.value;
          } else if (func == 'power') {
            result = pow(
              var1.value as num,
              (var2.value as num).toInt(),
            );
          }
          if (save != null && result != null) {
            _vars[save as int] = BlockyVar(
              type: BlockyLiteralType.num,
              value: result,
            );
          }
        } else if (action == BlockyBlockAction.varSet) {
          final varType = args['varType'];
          if (varType == 'num') {
            result = num.parse(args['num'] as String);
          } else if (varType == 'str') {
            result = args['str'];
          } else if (varType == 'bool') {
            result = args['bool'];
          }
        } else if (action == BlockyBlockAction.conditionIf) {
          final v1 = args['var1'];
          final v2 = args['var2'];
          final var1 = _vars[v1 ?? ''];
          final var2 = _vars[v2 ?? ''];
          final cmp = args['cmp'];

          if (cmp == null) {
            writeTerminal('Error: Comparison operator not found.');
            break;
          }

          if (['gt', 'gte', 'lt', 'lte', 'eq', 'neq']
                  .contains(args['cmp'] as String) &&
              var2 == null) {
            writeTerminal('Error: Variable $v2 not found.');
            break;
          }
          if (['gt', 'gte', 'lt', 'lte', 'eq', 'neq']
                  .contains(args['cmp'] as String) &&
              var1 == null) {
            writeTerminal('Error: Variable $v1 not found.');
            break;
          }

          if (['gt', 'gte', 'lt', 'lte'].contains(args['cmp'] as String)) {
            if (!((var1!.type == BlockyLiteralType.num ||
                    var1.type == BlockyLiteralType.any) &&
                (var2!.type == BlockyLiteralType.num ||
                    var2.type == BlockyLiteralType.any))) {
              writeTerminal(
                'Error: Cannot compare non-numerical values in line ${i + 1}.',
              );
              break;
            }
          }

          if (cmp == 'gt') {
            // ignore: avoid_dynamic_calls
            result = var1!.value > var2!.value;
          } else if (cmp == 'gte') {
            // ignore: avoid_dynamic_calls
            result = var1!.value >= var2!.value;
          } else if (cmp == 'lt') {
            // ignore: avoid_dynamic_calls
            result = var1!.value < var2!.value;
          } else if (cmp == 'lte') {
            // ignore: avoid_dynamic_calls
            result = var1!.value <= var2!.value;
          } else if (cmp == 'eq') {
            result = var1 == var2;
          } else if (cmp == 'neq') {
            result = var1 != var2;
          } else if (cmp == 'hv') {
            result = var1 != null;
          }
        } else if (action == BlockyBlockAction.conditionElse) {
          // nothing to do
        } else if (action == BlockyBlockAction.conditionEndIf) {
          // nothing to do
        } else if (action == BlockyBlockAction.loopWhile) {
          // nothing to do
        } else if (action == BlockyBlockAction.loopEndWhile) {
          // nothing to do
        } else if (action == BlockyBlockAction.soundPlay) {
          try {
            final sound = args['sound'];
            if (sound == null) {
              writeTerminal('Error: Sound not found.');
              break;
            }
            if (!['beep', 'laugh'].contains(sound)) {
              writeTerminal('Error: Sound not found.');
              break;
            }

            await player.play(
              AssetSource('assets/soundpack/$sound.mp3'),
            );
          } catch (e) {
            writeTerminal('Error: Play sound failed');
            break;
          }
        } else if (action == BlockyBlockAction.locationGet) {
          bool serviceEnabled;
          LocationPermission permission;

          serviceEnabled = await Geolocator.isLocationServiceEnabled();
          if (!serviceEnabled) {
            writeTerminal('Location services are disabled.');
            break;
          }

          permission = await Geolocator.checkPermission();
          if (permission == LocationPermission.denied) {
            permission = await Geolocator.requestPermission();
            if (permission == LocationPermission.denied) {
              writeTerminal('Location permissions are denied');
              break;
            }
          }

          if (permission == LocationPermission.deniedForever) {
            writeTerminal(
              'Error: Location permissions are permanently denied, we cannot request permissions.',
            );
            break;
          }

          final location = await Geolocator.getCurrentPosition();
          result = {
            'lat': location.latitude,
            'lng': location.longitude,
          };
        }

        if (blockDef.output != BlockyLiteralType.nil) {
          if (result != null) {
            _vars[i] = BlockyVar(type: blockDef.output, value: result);
          } else {
            debugPrint('[warn] vars is not assigned');
          }
        } else if (blockDef.action == BlockyBlockAction.conditionIf) {
          debugPrint('[dbg] condition checking');
          if (result != true) {
            debugPrint('[dbg] condition not meet, skip to else or endif');
            for (var j = i; j < blocks.length; ++j) {
              final blk = blocks[j];
              final act = blk.action;
              if (act == BlockyBlockAction.conditionElse) {
                i = j;
                break;
              } else if (act == BlockyBlockAction.conditionEndIf) {
                i = j;
                break;
              }
            }
            debugPrint(
              '[dbg] condition not meet, skipping to $i which is ${blocks[i].action}',
            );
          }
        } else if (blockDef.action == BlockyBlockAction.conditionElse) {
          debugPrint('[dbg] skip to endif');
          for (var j = i; j < blocks.length; ++j) {
            final blk = blocks[j];
            final act = blk.action;
            if (act == BlockyBlockAction.conditionEndIf) {
              i = j;
              break;
            }
          }
          debugPrint('[dbg] skipping to $i which is ${blocks[i].action}');
        } else if (blockDef.action == BlockyBlockAction.loopEndWhile) {
          final whileBlock =
              blocks.firstWhereOrNull((e) => e.id == block.parent);
          if (whileBlock == null) {
            writeTerminal('Error: while block not found.');
            break;
          }
          final v1 = whileBlock.args['var1'];
          final v2 = whileBlock.args['var2'];
          final var1 = _vars[v1 ?? ''];
          final var2 = _vars[v2 ?? ''];
          final cmp = whileBlock.args['cmp'];

          if (cmp == null) {
            writeTerminal('Error: Comparison operator not found.');
            break;
          }

          if (['gt', 'gte', 'lt', 'lte', 'eq', 'neq']
                  .contains(whileBlock.args['cmp'] as String) &&
              var2 == null) {
            writeTerminal('Error: Variable $v2 not found.');
            break;
          }
          if (['gt', 'gte', 'lt', 'lte', 'eq', 'neq']
                  .contains(whileBlock.args['cmp'] as String) &&
              var1 == null) {
            writeTerminal('Error: Variable $v1 not found.');
            break;
          }

          if (['gt', 'gte', 'lt', 'lte']
              .contains(whileBlock.args['cmp'] as String)) {
            if (!((var1!.type == BlockyLiteralType.num ||
                    var1.type == BlockyLiteralType.any) &&
                (var2!.type == BlockyLiteralType.num ||
                    var2.type == BlockyLiteralType.any))) {
              writeTerminal(
                'Error: Cannot compare non-numerical values in line ${i + 1}.',
              );
              break;
            }
          }

          if (cmp == 'gt') {
            // ignore: avoid_dynamic_calls
            result = var1!.value > var2!.value;
          } else if (cmp == 'gte') {
            // ignore: avoid_dynamic_calls
            result = var1!.value >= var2!.value;
          } else if (cmp == 'lt') {
            // ignore: avoid_dynamic_calls
            result = var1!.value < var2!.value;
          } else if (cmp == 'lte') {
            // ignore: avoid_dynamic_calls
            result = var1!.value <= var2!.value;
          } else if (cmp == 'eq') {
            result = var1 == var2;
          } else if (cmp == 'neq') {
            result = var1 != var2;
          } else if (cmp == 'hv') {
            result = var1 != null;
          }
          if (result == true) {
            debugPrint('[dbg] condition meet, loop back to while block');
            i = blocks.indexOf(whileBlock);
          }
        }

        ++i;
      } catch (e, st) {
        writeTerminal(e.toString());
        if (kDebugMode) {
          print(st);
        }
        break;
      }
    }

    _cleanup();
  }
}
