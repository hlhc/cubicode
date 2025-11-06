import 'package:cubicode/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ProjectCover extends StatelessWidget {
  const ProjectCover(this.imageName, {super.key});

  final String imageName;

  @override
  Widget build(BuildContext context) {
    final image =
        Assets.covers.values.firstWhere((e) => e.keyName.endsWith(imageName));
    return image.image(key: Key(image.keyName));
  }
}
