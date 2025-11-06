import 'dart:math';

import 'package:blocky/blocky.dart';
import 'package:collection/collection.dart';
import 'package:cubicode/playground/cubit/playground_cubit.dart';
import 'package:cubicode/playground/widgets/blocky_arg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const iconMap = <BlockyBlockAction, IconData>{
  BlockyBlockAction.textPrint: Icons.text_fields,
  BlockyBlockAction.varSet: Icons.abc,
  BlockyBlockAction.conditionIf: Icons.directions,
  BlockyBlockAction.conditionElse: Icons.directions,
  BlockyBlockAction.conditionEndIf: Icons.directions,
  BlockyBlockAction.loopWhile: Icons.loop,
  BlockyBlockAction.loopEndWhile: Icons.loop,
  BlockyBlockAction.soundPlay: Icons.music_note,
  BlockyBlockAction.locationGet: Icons.location_on,
};

class BlockyBlockWidget extends StatefulWidget {
  const BlockyBlockWidget({
    required this.block,
    required this.blockIndex,
    required this.state,
    required this.indent,
    super.key,
  });

  final BlockyBlock block;
  final int blockIndex;
  final PlaygroundState state;
  final int indent;

  @override
  State<BlockyBlockWidget> createState() => _BlockyBlockWidgetState();
}

class _BlockyBlockWidgetState extends State<BlockyBlockWidget> {
  Future<void> _showContextMenu(
    TapDownDetails details,
    BuildContext context,
  ) async {
    final tapPosition = details.globalPosition;
    final overlay = Overlay.of(context).context.findRenderObject();

    final result = await showMenu(
      context: context,

      position: RelativeRect.fromRect(
        Rect.fromLTWH(
          tapPosition.dx,
          tapPosition.dy,
          0,
          0,
        ),
        Rect.fromLTWH(
          0,
          0,
          overlay!.paintBounds.size.width,
          overlay.paintBounds.size.height,
        ),
      ),

      // set a list of choices for the context menu
      items: [
        const PopupMenuItem(
          value: 'delete',
          child: Text('Delete'),
        ),
      ],
    );
    switch (result) {
      case 'delete':
        if (mounted) context.read<PlaygroundCubit>().removeBlock(widget.block);
        debugPrint('Delete');
    }
  }

  @override
  Widget build(BuildContext context) {
    final block = widget.block;
    final blockDef = blockyBlockDefs
        .firstWhereOrNull((element) => element.action == block.action);
    final args = blockDef?.args ?? [];

    return Padding(
      padding: EdgeInsets.only(
        left: max(widget.indent, 0) * 16.0,
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onDoubleTapDown: (details) => _showContextMenu(details, context),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(iconMap[block.action]),
                const SizedBox(width: 8),
                Expanded(
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: args
                        .mapIndexed(
                          (index, value) => BlockArgWidget(
                            arg: value,
                            block: block,
                            index: index,
                            blockIndex: widget.blockIndex,
                            state: widget.state,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
