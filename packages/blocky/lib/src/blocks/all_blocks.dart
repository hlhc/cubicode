import 'package:blocky/blocky.dart';

final blockyDefs = <BlockyDef>[
  ...textBlocks,
  ...varBlocks,
  ...conditionBlocks,
  ...locationBlocks,
  ...loopBlocks,
  ...soundBlocks,
  ...mathBlocks,
];

final blockyBlockDefs = <BlockyBlockDef>[
  for (final blockyDef in blockyDefs) ...blockyDef.blocks,
];
