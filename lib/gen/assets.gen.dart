/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/card1.png
  AssetGenImage get card1 => const AssetGenImage('assets/png/card1.png');

  /// File path: assets/png/card2.png
  AssetGenImage get card2 => const AssetGenImage('assets/png/card2.png');

  /// File path: assets/png/card3.png
  AssetGenImage get card3 => const AssetGenImage('assets/png/card3.png');

  /// File path: assets/png/grid1.png
  AssetGenImage get grid1 => const AssetGenImage('assets/png/grid1.png');

  /// File path: assets/png/grid2.png
  AssetGenImage get grid2 => const AssetGenImage('assets/png/grid2.png');

  /// File path: assets/png/grid3.png
  AssetGenImage get grid3 => const AssetGenImage('assets/png/grid3.png');

  /// File path: assets/png/john_doe.png
  AssetGenImage get johnDoe => const AssetGenImage('assets/png/john_doe.png');

  /// File path: assets/png/stack2.png
  AssetGenImage get stack2 => const AssetGenImage('assets/png/stack2.png');

  /// File path: assets/png/stack3.png
  AssetGenImage get stack3 => const AssetGenImage('assets/png/stack3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    card1,
    card2,
    card3,
    grid1,
    grid2,
    grid3,
    johnDoe,
    stack2,
    stack3,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/calendar.svg
  String get calendar => 'assets/svg/calendar.svg';

  /// File path: assets/svg/chevron-down.svg
  String get chevronDown => 'assets/svg/chevron-down.svg';

  /// File path: assets/svg/logo.svg
  String get logo => 'assets/svg/logo.svg';

  /// File path: assets/svg/menu.svg
  String get menu => 'assets/svg/menu.svg';

  /// File path: assets/svg/more.svg
  String get more => 'assets/svg/more.svg';

  /// File path: assets/svg/notification.svg
  String get notification => 'assets/svg/notification.svg';

  /// File path: assets/svg/plus.svg
  String get plus => 'assets/svg/plus.svg';

  /// File path: assets/svg/setting.svg
  String get setting => 'assets/svg/setting.svg';

  /// File path: assets/svg/sliders.svg
  String get sliders => 'assets/svg/sliders.svg';

  /// List of all assets
  List<String> get values => [
    calendar,
    chevronDown,
    logo,
    menu,
    more,
    notification,
    plus,
    setting,
    sliders,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
