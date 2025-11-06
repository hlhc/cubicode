import 'package:blocky/src/definitions/definitions.dart';

final textBlocks = <BlockyDef>[
  BlockyDef(
    type: BlockyType.text,
    title: 'Print statement',
    message: 'Print specific text, number or value',
    blocks: <BlockyBlockDef>[
      BlockyBlockDef(
        action: BlockyBlockAction.textPrint,
        message: 'Print',
        output: BlockyLiteralType.nil,
        style: BlockyStyle.textBlock,
        args: <BlockyArgsDef>[
          const BlockyArgsDef.dummyText(
            text: 'Print text: ',
          ),
          const BlockyArgsDef.inputEnum(
            name: 'Type',
            key: 'valType',
            enumeration: {
              'text': 'Text',
              'var': 'Variable',
            },
          ),
          BlockyArgsDef.inputStr(
            name: 'Type text',
            key: 'text',
            onCondition: (args) => args['valType'] == 'text',
          ),
          BlockyArgsDef.inputVar(
            name: 'Select variable',
            key: 'var',
            onCondition: (args) => args['valType'] == 'var',
          ),
        ],
      ),
    ],
  ),
];
