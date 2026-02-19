// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Container (5).png
  AssetGenImage get container5 =>
      const AssetGenImage('assets/icons/Container (5).png');

  /// File path: assets/icons/audio_button.png
  AssetGenImage get audioButton =>
      const AssetGenImage('assets/icons/audio_button.png');

  /// File path: assets/icons/bell.png
  AssetGenImage get bell => const AssetGenImage('assets/icons/bell.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/library.png
  AssetGenImage get library => const AssetGenImage('assets/icons/library.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/profile_picture.png
  AssetGenImage get profilePicture =>
      const AssetGenImage('assets/icons/profile_picture.png');

  /// File path: assets/icons/saved.png
  AssetGenImage get saved => const AssetGenImage('assets/icons/saved.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/stars.png
  AssetGenImage get stars => const AssetGenImage('assets/icons/stars.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    container5,
    audioButton,
    bell,
    home,
    library,
    profile,
    profilePicture,
    saved,
    search,
    share,
    stars,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/audio_books.png
  AssetGenImage get audioBooks =>
      const AssetGenImage('assets/images/audio_books.png');

  /// File path: assets/images/book1.png
  AssetGenImage get book1 => const AssetGenImage('assets/images/book1.png');

  /// File path: assets/images/book2.png
  AssetGenImage get book2 => const AssetGenImage('assets/images/book2.png');

  /// File path: assets/images/book3.png
  AssetGenImage get book3 => const AssetGenImage('assets/images/book3.png');

  /// File path: assets/images/detail_book.png
  AssetGenImage get detailBook =>
      const AssetGenImage('assets/images/detail_book.png');

  /// File path: assets/images/whitebook.png
  AssetGenImage get whitebook =>
      const AssetGenImage('assets/images/whitebook.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    audioBooks,
    book1,
    book2,
    book3,
    detailBook,
    whitebook,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
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
