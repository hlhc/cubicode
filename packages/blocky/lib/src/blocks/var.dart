import 'package:blocky/src/definitions/definitions.dart';

final varBlocks = <BlockyDef>[
  BlockyDef(
    type: BlockyType.vars,
    title: 'Set variable',
    message: 'Set variable to specific text, number or value',
    blocks: <BlockyBlockDef>[
      BlockyBlockDef(
        action: BlockyBlockAction.varSet,
        message: 'Set variable',
        output: BlockyLiteralType.any, // TODO: dyn type
        style: BlockyStyle.textBlock,
        args: <BlockyArgsDef>[
          const BlockyArgsDef.dummyText(
            text: 'Set a variable named',
          ),
          const BlockyArgsDef.inputStr(
            name: 'Type variable name',
            key: 'varName',
          ),
          const BlockyArgsDef.dummyText(
            text: 'which is a',
          ),
          const BlockyArgsDef.inputEnum(
            name: 'Type',
            key: 'varType',
            enumeration: {
              'num': 'Number',
              'str': 'String',
              'bool': 'Boolean',
            },
          ),
          const BlockyArgsDef.dummyText(
            text: 'holding value: ',
          ),
          BlockyArgsDef.inputNum(
            name: 'Type the number',
            key: 'num',
            onCondition: (args) => args['varType'] == 'num',
          ),
          BlockyArgsDef.inputStr(
            name: 'Type a string',
            key: 'str',
            onCondition: (args) => args['varType'] == 'str',
          ),
          BlockyArgsDef.inputBool(
            name: 'Type text',
            key: 'bool',
            onCondition: (args) => args['varType'] == 'bool',
          ),
        ],
      ),
    ],
  ),
];
