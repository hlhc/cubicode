import 'package:blocky/src/definitions/definitions.dart';

final _while = BlockyBlockDef(
  action: BlockyBlockAction.loopWhile,
  message: 'While the statement holds true, do the following',
  output: BlockyLiteralType.nil,
  style: BlockyStyle.loopBlock,
  args: <BlockyArgsDef>[
    const BlockyArgsDef.dummyText(
      text: 'While ',
    ),
    const BlockyArgsDef.inputVar(
      name: 'Select variable',
      key: 'var1',
    ),
    const BlockyArgsDef.inputEnum(
      name: 'Type',
      key: 'cmp',
      enumeration: {
        'gt': 'is greater than',
        'gte': 'is greater than or equal to',
        'lt': 'is less than',
        'lte': 'is less than or equal to',
        'eq': 'is equal to',
        'neq': 'is not equal to',
        'hv': 'has value',
      },
    ),
    BlockyArgsDef.inputVar(
      name: 'Select variable',
      key: 'var2',
      onCondition: (args) => ['gt', 'gte', 'lt', 'lte', 'eq', 'neq']
          .contains(args['cmp'] as String?),
    ),
  ],
);

const _endWhile = BlockyBlockDef(
  action: BlockyBlockAction.loopEndWhile,
  message: '',
  output: BlockyLiteralType.nil,
  style: BlockyStyle.loopBlock,
  args: <BlockyArgsDef>[
    BlockyArgsDef.dummyText(
      text: 'End While',
    ),
  ],
);

final loopBlocks = <BlockyDef>[
  BlockyDef(
    type: BlockyType.loop,
    title: 'While Loop',
    message: 'While the statement holds true, do the following',
    blocks: <BlockyBlockDef>[_while, _endWhile],
  ),
];
