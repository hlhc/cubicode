import 'package:flutter/material.dart';

class AnimatedProgressBar extends StatelessWidget {
  const AnimatedProgressBar({
    required this.value,
    super.key,
  }) : height = 12.0;

  const AnimatedProgressBar.mini({
    required this.value,
    super.key,
  }) : height = 8.0;

  final double value;
  final double height;

  @override
  Widget build(BuildContext context) {
    final r = (value * 255).toInt();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;
        return Container(
          padding: const EdgeInsets.all(10),
          width: maxWidth,
          child: Stack(
            children: [
              Container(
                height: height,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.all(
                    Radius.circular(height),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeOutCubic,
                height: height,
                width: maxWidth * value.clamp(0, value.abs()),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primary
                      .withGreen(r)
                      .withRed(255 - r),
                  borderRadius: BorderRadius.all(
                    Radius.circular(height),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
