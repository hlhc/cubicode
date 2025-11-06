import 'package:blocky/src/definitions/definitions.dart';

final soundBlocks = <BlockyDef>[
  const BlockyDef(
    type: BlockyType.sound,
    title: 'Play sound',
    message: 'Play a sound from the list',
    blocks: <BlockyBlockDef>[
      BlockyBlockDef(
        action: BlockyBlockAction.soundPlay,
        message: 'Play sound',
        output: BlockyLiteralType.nil,
        style: BlockyStyle.textBlock,
        args: <BlockyArgsDef>[
          BlockyArgsDef.dummyText(
            text: 'Play sound: ',
          ),
          BlockyArgsDef.inputEnum(
            name: 'Sound',
            key: 'sound',
            enumeration: {
              'beep': 'beep',
              'laugh': 'Laugh',
            },
          ),
        ],
      ),
    ],
  ),
];
