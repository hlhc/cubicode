import 'package:blocky/blocky.dart';
import 'package:cubicode/playground/cubit/playground_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlockArgWidget extends StatefulWidget {
  const BlockArgWidget({
    required this.arg,
    required this.block,
    required this.index,
    required this.blockIndex,
    required this.state,
    super.key,
  });

  final BlockyArgsDef arg;
  final BlockyBlock block;
  final PlaygroundState state;
  final int index;
  final int blockIndex;

  @override
  State<BlockArgWidget> createState() => _BlockArgWidgetState();
}

class _BlockArgWidgetState extends State<BlockArgWidget> {
  @override
  Widget build(BuildContext context) {
    final arg = widget.arg;

    return arg.map(
      dummyText: (dummyText) => Text(dummyText.text),
      inputStr: (inputStr) => (inputStr.onCondition?.call(widget.block.args) ??
              true)
          ? SizedBox(
              width: 200,
              child: TextFormField(
                initialValue: widget.block.args[inputStr.key]?.toString() ?? '',
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  isDense: true,
                  hintText: inputStr.name,
                  fillColor: Colors.grey[900],
                ),
                onChanged: (val) {
                  context.read<PlaygroundCubit>().setBlockArg(
                        widget.block,
                        inputStr.key,
                        val,
                      );
                },
              ),
            )
          : const SizedBox.shrink(),
      inputNum: (inputNum) => (inputNum.onCondition?.call(widget.block.args) ??
              true)
          ? SizedBox(
              width: 200,
              child: TextFormField(
                initialValue: widget.block.args[inputNum.key]?.toString() ?? '',
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  isDense: true,
                  hintText: inputNum.name,
                  fillColor: Colors.grey[900],
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (val) {
                  context.read<PlaygroundCubit>().setBlockArg(
                        widget.block,
                        inputNum.key,
                        val,
                      );
                },
              ),
            )
          : const SizedBox.shrink(),
      inputBool: (inputBool) =>
          (inputBool.onCondition?.call(widget.block.args) ?? true)
              ? TextButton(
                  onPressed: () {
                    var currentValue =
                        widget.block.args[inputBool.key] ?? false;
                    currentValue = currentValue is bool && currentValue;
                    context.read<PlaygroundCubit>().setBlockArg(
                          widget.block,
                          inputBool.key,
                          !currentValue,
                        );
                  },
                  child: Text(
                    (widget.block.args[inputBool.key] ?? false) is bool
                        ? (widget.block.args[inputBool.key] ?? false) as bool
                            ? 'true'
                            : 'false'
                        : 'false',
                  ),
                )
              : const SizedBox.shrink(),
      inputVar: (inputVar) => (inputVar.onCondition?.call(widget.block.args) ??
              true)
          ? DropdownMenu<int>(
              enableSearch: false,
              initialSelection: widget.block.args[inputVar.key] as int? ?? 0,
              inputDecorationTheme: InputDecorationTheme(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                isDense: true,
                constraints: BoxConstraints.tight(const Size.fromHeight(30)),
              ),
              onSelected: (int? val) {
                context.read<PlaygroundCubit>().setBlockArg(
                      widget.block,
                      inputVar.key,
                      val,
                    );
              },
              dropdownMenuEntries: widget.state
                  .getVarsFromCurrentLine(widget.blockIndex)
                  .entries
                  .map(
                    (e) => DropdownMenuEntry<int>(
                      value: e.key,
                      label: e.value,
                      style: ButtonStyle(
                        textStyle: WidgetStateTextStyle.resolveWith(
                          (states) => Theme.of(context).textTheme.bodySmall!,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            )
          : const SizedBox.shrink(),
      inputEnum: (inputEnum) => (inputEnum.onCondition
                  ?.call(widget.block.args) ??
              true)
          ? DropdownMenu<String>(
              enableSearch: false,
              initialSelection:
                  widget.block.args[inputEnum.key]?.toString() ?? '',
              inputDecorationTheme: InputDecorationTheme(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                isDense: true,
                constraints: BoxConstraints.tight(const Size.fromHeight(30)),
              ),
              trailingIcon: const Icon(Icons.arrow_drop_down, size: 14),
              selectedTrailingIcon: const Icon(Icons.arrow_drop_up, size: 14),
              onSelected: (String? val) {
                context.read<PlaygroundCubit>().setBlockArg(
                      widget.block,
                      inputEnum.key,
                      val,
                    );
              },
              dropdownMenuEntries: inputEnum.enumeration.entries
                  .map(
                    (e) => DropdownMenuEntry<String>(
                      value: e.key,
                      label: e.value,
                      style: ButtonStyle(
                        textStyle: WidgetStateTextStyle.resolveWith(
                          (states) => Theme.of(context).textTheme.bodySmall!,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            )
          : const SizedBox.shrink(),
    );
  }
}
