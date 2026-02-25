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

  /// File path: assets/icons/audio_button.png
  AssetGenImage get audioButton =>
      const AssetGenImage('assets/icons/audio_button.png');

  /// File path: assets/icons/bell.png
  AssetGenImage get bell => const AssetGenImage('assets/icons/bell.png');

  /// File path: assets/icons/heart.svg
  String get heart => 'assets/icons/heart.svg';

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/library.png
  AssetGenImage get library => const AssetGenImage('assets/icons/library.png');

  /// File path: assets/icons/menu.svg
  String get menu => 'assets/icons/menu.svg';

  /// File path: assets/icons/page.png
  AssetGenImage get page => const AssetGenImage('assets/icons/page.png');

  /// File path: assets/icons/pdf.png
  AssetGenImage get pdf => const AssetGenImage('assets/icons/pdf.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/profile_picture.png
  AssetGenImage get profilePicture =>
      const AssetGenImage('assets/icons/profile_picture.png');

  /// File path: assets/icons/saved.png
  AssetGenImage get saved => const AssetGenImage('assets/icons/saved.png');

  /// File path: assets/icons/search.png
  AssetGenImage get searchPng => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/search.svg
  String get searchSvg => 'assets/icons/search.svg';

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/stars.png
  AssetGenImage get stars => const AssetGenImage('assets/icons/stars.png');

  /// List of all assets
  List<dynamic> get values => [
    audioButton,
    bell,
    heart,
    home,
    library,
    menu,
    page,
    pdf,
    profile,
    profilePicture,
    saved,
    searchPng,
    searchSvg,
    share,
    stars,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/Logo.png');

  /// File path: assets/images/audio_books.png
  AssetGenImage get audioBooks =>
      const AssetGenImage('assets/images/audio_books.png');

  /// File path: assets/images/book1.png
  AssetGenImage get book1 => const AssetGenImage('assets/images/book1.png');

  /// File path: assets/images/book2.png
  AssetGenImage get book2 => const AssetGenImage('assets/images/book2.png');

  /// File path: assets/images/book3.png
  AssetGenImage get book3 => const AssetGenImage('assets/images/book3.png');

  /// File path: assets/images/bosh.png
  AssetGenImage get bosh => const AssetGenImage('assets/images/bosh.png');

  /// File path: assets/images/detail_book.png
  AssetGenImage get detailBook =>
      const AssetGenImage('assets/images/detail_book.png');

  /// File path: assets/images/foiz.png
  AssetGenImage get foiz => const AssetGenImage('assets/images/foiz.png');

  /// File path: assets/images/girl.png
  AssetGenImage get girl => const AssetGenImage('assets/images/girl.png');

  /// File path: assets/images/history.png
  AssetGenImage get history => const AssetGenImage('assets/images/history.png');

  /// File path: assets/images/homiy.png
  AssetGenImage get homiy => const AssetGenImage('assets/images/homiy.png');

  /// File path: assets/images/horor.png
  AssetGenImage get horor => const AssetGenImage('assets/images/horor.png');

  /// File path: assets/images/kitob.png
  AssetGenImage get kitob => const AssetGenImage('assets/images/kitob.png');

  /// File path: assets/images/like.png
  AssetGenImage get like => const AssetGenImage('assets/images/like.png');

  /// File path: assets/images/lupa.png
  AssetGenImage get lupa => const AssetGenImage('assets/images/lupa.png');

  /// File path: assets/images/mHome.png
  AssetGenImage get mHome => const AssetGenImage('assets/images/mHome.png');

  /// File path: assets/images/person.png
  AssetGenImage get person => const AssetGenImage('assets/images/person.png');

  /// File path: assets/images/phone.png
  AssetGenImage get phone => const AssetGenImage('assets/images/phone.png');

  /// File path: assets/images/samolyot.png
  AssetGenImage get samolyot =>
      const AssetGenImage('assets/images/samolyot.png');

  /// File path: assets/images/sehrrita.png
  AssetGenImage get sehrrita =>
      const AssetGenImage('assets/images/sehrrita.png');

  /// File path: assets/images/stars.png
  AssetGenImage get stars => const AssetGenImage('assets/images/stars.png');

  /// File path: assets/images/step.png
  AssetGenImage get step => const AssetGenImage('assets/images/step.png');

  /// File path: assets/images/viev.png
  AssetGenImage get viev => const AssetGenImage('assets/images/viev.png');

  /// File path: assets/images/whitebook.png
  AssetGenImage get whitebook =>
      const AssetGenImage('assets/images/whitebook.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    logo,
    audioBooks,
    book1,
    book2,
    book3,
    bosh,
    detailBook,
    foiz,
    girl,
    history,
    homiy,
    horor,
    kitob,
    like,
    lupa,
    mHome,
    person,
    phone,
    samolyot,
    sehrrita,
    stars,
    step,
    viev,
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
