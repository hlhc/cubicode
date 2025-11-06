import 'package:blocky/src/definitions/definitions.dart';

final locationBlocks = <BlockyDef>[
  const BlockyDef(
    type: BlockyType.location,
    title: 'Get location',
    message: 'Get location from GPS and store it in a variable',
    blocks: <BlockyBlockDef>[
      BlockyBlockDef(
        action: BlockyBlockAction.locationGet,
        message: 'Get location from GPS and store it in a variable',
        output: BlockyLiteralType.map,
        style: BlockyStyle.locationBlock,
        args: <BlockyArgsDef>[
          BlockyArgsDef.dummyText(
            text: 'Get location from GPS',
          ),
        ],
      ),
    ],
  ),
];
