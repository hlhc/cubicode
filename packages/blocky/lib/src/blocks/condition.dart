import 'package:blocky/src/definitions/definitions.dart';

final _if = BlockyBlockDef(
  action: BlockyBlockAction.conditionIf,
  message: 'If the statement holds true, do the following',
  output: BlockyLiteralType.nil,
  style: BlockyStyle.logicBlock,
  args: <BlockyArgsDef>[
    const BlockyArgsDef.dummyText(
      text: 'If ',
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

const _else = BlockyBlockDef(
  action: BlockyBlockAction.conditionElse,
  message: 'Set variable',
  output: BlockyLiteralType.nil,
  style: BlockyStyle.logicBlock,
  args: <BlockyArgsDef>[
    BlockyArgsDef.dummyText(
      text: 'Otherwise',
    ),
  ],
);

const _endIf = BlockyBlockDef(
  action: BlockyBlockAction.conditionEndIf,
  message: 'Set variable',
  output: BlockyLiteralType.nil,
  style: BlockyStyle.logicBlock,
  args: <BlockyArgsDef>[
    BlockyArgsDef.dummyText(
      text: 'End if',
    ),
  ],
);

final conditionBlocks = <BlockyDef>[
  BlockyDef(
    type: BlockyType.condition,
    title: 'If else Statement',
    message: 'If the statement holds true, do the following, else do things '
        "under 'Otherwise' condition",
    blocks: <BlockyBlockDef>[
      _if,
      _else,
      _endIf,
    ],
  ),
  BlockyDef(
    type: BlockyType.condition,
    title: 'If Statement',
    message: 'If the statement holds true, do the following.',
    blocks: <BlockyBlockDef>[_if, _endIf],
  ),
];
