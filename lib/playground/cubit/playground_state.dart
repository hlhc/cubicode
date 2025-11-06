part of 'playground_cubit.dart';

@freezed
abstract class PlaygroundState with _$PlaygroundState {
  const factory PlaygroundState({
    required String title,
    required bool shared,
    required BlockyProgram program,
    required bool readonly,
    Quiz? quiz,
    String? id,
    String? checksum,
  }) = _PlaygroundState;

  factory PlaygroundState.initial() => PlaygroundState(
        title: 'Untitled',
        shared: false,
        program: BlockyProgram.empty(),
        readonly: false,
      );

  const PlaygroundState._();

  bool get isDirty => checksum != program.checksum;

  Map<int, String> getVarsFromCurrentLine(int index) {
    final lines = program.blocks.slice(0, index);
    final returnLines = lines
        .mapIndexed((index, element) => {'i': index, 'e': element})
        .where((e) => (e['e']! as BlockyBlock).output != BlockyLiteralType.nil);
    final entries = returnLines.map((e) {
      final varName =
          (e['e']! as BlockyBlock).action == BlockyBlockAction.varSet
              ? (e['e']! as BlockyBlock).args['varName'] ?? 'Variable'
              : 'Output';
      return MapEntry(
        e['i']! as int,
        '$varName from line ${(e['i']! as int) + 1}',
      );
    }).toList();
    final result = Map.fromEntries(entries);
    return result;
  }

  int getIndent(int index) {
    final blks = program.blocks.slice(0, index);
    var i = 0;
    for (final block in blks) {
      if (block.action == BlockyBlockAction.conditionIf ||
          block.action == BlockyBlockAction.loopWhile) {
        i++;
      } else if (block.action == BlockyBlockAction.conditionEndIf ||
          block.action == BlockyBlockAction.loopEndWhile) {
        --i;
      }
    }
    return program.blocks[index].action == BlockyBlockAction.conditionElse ||
            program.blocks[index].action == BlockyBlockAction.conditionEndIf ||
            program.blocks[index].action == BlockyBlockAction.loopEndWhile
        ? i - 1
        : i;
  }
}
