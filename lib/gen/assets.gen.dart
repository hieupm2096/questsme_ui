/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_heart_outline.svg
  SvgGenImage get icHeartOutline =>
      const SvgGenImage('assets/icons/ic_heart_outline.svg');

  /// File path: assets/icons/ic_nav_home.svg
  SvgGenImage get icNavHome =>
      const SvgGenImage('assets/icons/ic_nav_home.svg');

  /// File path: assets/icons/ic_nav_my_game.svg
  SvgGenImage get icNavMyGame =>
      const SvgGenImage('assets/icons/ic_nav_my_game.svg');

  /// File path: assets/icons/ic_nav_my_game_active.svg
  SvgGenImage get icNavMyGameActive =>
      const SvgGenImage('assets/icons/ic_nav_my_game_active.svg');

  /// File path: assets/icons/ic_nav_profile.svg
  SvgGenImage get icNavProfile =>
      const SvgGenImage('assets/icons/ic_nav_profile.svg');

  /// File path: assets/icons/ic_nav_quest.svg
  SvgGenImage get icNavQuest =>
      const SvgGenImage('assets/icons/ic_nav_quest.svg');

  /// File path: assets/icons/ic_nav_search.svg
  SvgGenImage get icNavSearch =>
      const SvgGenImage('assets/icons/ic_nav_search.svg');

  /// File path: assets/icons/ic_qcoin.svg
  SvgGenImage get icQcoin => const SvgGenImage('assets/icons/ic_qcoin.svg');

  /// File path: assets/icons/ic_wallet.svg
  SvgGenImage get icWallet => const SvgGenImage('assets/icons/ic_wallet.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icHeartOutline,
        icNavHome,
        icNavMyGame,
        icNavMyGameActive,
        icNavProfile,
        icNavQuest,
        icNavSearch,
        icQcoin,
        icWallet
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo_white.svg
  SvgGenImage get logoWhite =>
      const SvgGenImage('assets/images/logo_white.svg');

  /// List of all assets
  List<SvgGenImage> get values => [logoWhite];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
