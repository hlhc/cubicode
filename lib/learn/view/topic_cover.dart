import 'package:cubicode/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TopicCover extends StatelessWidget {
  const TopicCover(this.imageName, {super.key});

  final String imageName;

  @override
  Widget build(BuildContext context) {
    final image =
        Assets.covers.values.firstWhere((e) => e.keyName.endsWith(imageName));
    return image.image(key: Key(image.keyName));
  }
}
