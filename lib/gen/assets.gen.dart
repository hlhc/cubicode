// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsCoversGen {
  const $AssetsCoversGen();

  /// File path: assets/covers/default_cover.png
  AssetGenImage get defaultCover =>
      const AssetGenImage('assets/covers/default_cover.png');

  /// File path: assets/covers/hello-world.png
  AssetGenImage get helloWorld =>
      const AssetGenImage('assets/covers/hello-world.png');

  /// List of all assets
  List<AssetGenImage> get values => [defaultCover, helloWorld];
}

class $AssetsGuideGen {
  const $AssetsGuideGen();

  /// Directory path: assets/guide/hello-world
  $AssetsGuideHelloWorldGen get helloWorld => const $AssetsGuideHelloWorldGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class $AssetsSoundpackGen {
  const $AssetsSoundpackGen();

  /// File path: assets/soundpack/beep.mp3
  String get beep => 'assets/soundpack/beep.mp3';

  /// File path: assets/soundpack/laugh.mp3
  String get laugh => 'assets/soundpack/laugh.mp3';

  /// List of all assets
  List<String> get values => [beep, laugh];
}

class $AssetsGuideHelloWorldGen {
  const $AssetsGuideHelloWorldGen();

  /// File path: assets/guide/hello-world/hw1.png
  AssetGenImage get hw1 =>
      const AssetGenImage('assets/guide/hello-world/hw1.png');

  /// File path: assets/guide/hello-world/hw2.png
  AssetGenImage get hw2 =>
      const AssetGenImage('assets/guide/hello-world/hw2.png');

  /// File path: assets/guide/hello-world/hw3.png
  AssetGenImage get hw3 =>
      const AssetGenImage('assets/guide/hello-world/hw3.png');

  /// File path: assets/guide/hello-world/hw4.png
  AssetGenImage get hw4 =>
      const AssetGenImage('assets/guide/hello-world/hw4.png');

  /// List of all assets
  List<AssetGenImage> get values => [hw1, hw2, hw3, hw4];
}

class Assets {
  const Assets._();

  static const $AssetsCoversGen covers = $AssetsCoversGen();
  static const $AssetsGuideGen guide = $AssetsGuideGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSoundpackGen soundpack = $AssetsSoundpackGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
