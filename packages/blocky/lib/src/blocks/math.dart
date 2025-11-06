import 'package:blocky/src/definitions/definitions.dart';

final mathBlocks = <BlockyDef>[
  const BlockyDef(
    type: BlockyType.math,
    title: 'Math block',
    message: 'Calculate a math statement and store it in a variable',
    blocks: <BlockyBlockDef>[
      BlockyBlockDef(
        action: BlockyBlockAction.mathCompute,
        message: 'Calculate a math statement',
        output: BlockyLiteralType.nil,
        style: BlockyStyle.logicBlock,
        args: <BlockyArgsDef>[
          BlockyArgsDef.dummyText(
            text: 'Calculate ',
          ),
          BlockyArgsDef.inputVar(
            name: 'Select variable',
            key: 'var1',
          ),
          BlockyArgsDef.inputEnum(
            name: 'Type',
            key: 'func',
            enumeration: {
              'plus': '+',
              'minus': '-',
              'multiply': '*',
              'divide': '/',
              'modulo': '%',
              'power': '^',
            },
          ),
          BlockyArgsDef.inputVar(
            name: 'Select variable',
            key: 'var2',
          ),
          BlockyArgsDef.dummyText(
            text: 'and save to ',
          ),
          BlockyArgsDef.inputVar(
            name: 'Select variable',
            key: 'save',
          ),
        ],
      ),
    ],
  ),
];
