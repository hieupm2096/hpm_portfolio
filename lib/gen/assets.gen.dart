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

  /// File path: assets/icons/ic_github.svg
  SvgGenImage get icGithub => const SvgGenImage('assets/icons/ic_github.svg');

  /// File path: assets/icons/ic_linkedin.svg
  SvgGenImage get icLinkedin =>
      const SvgGenImage('assets/icons/ic_linkedin.svg');

  /// File path: assets/icons/ic_mail.svg
  SvgGenImage get icMail => const SvgGenImage('assets/icons/ic_mail.svg');

  /// File path: assets/icons/ic_slash.svg
  SvgGenImage get icSlash => const SvgGenImage('assets/icons/ic_slash.svg');

  /// List of all assets
  List<SvgGenImage> get values => [icGithub, icLinkedin, icMail, icSlash];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/article_image_1.png
  AssetGenImage get articleImage1 =>
      const AssetGenImage('assets/images/article_image_1.png');

  /// File path: assets/images/article_image_2.png
  AssetGenImage get articleImage2 =>
      const AssetGenImage('assets/images/article_image_2.png');

  /// File path: assets/images/article_image_3.png
  AssetGenImage get articleImage3 =>
      const AssetGenImage('assets/images/article_image_3.png');

  /// File path: assets/images/article_image_4.png
  AssetGenImage get articleImage4 =>
      const AssetGenImage('assets/images/article_image_4.png');

  /// File path: assets/images/article_image_5.png
  AssetGenImage get articleImage5 =>
      const AssetGenImage('assets/images/article_image_5.png');

  /// File path: assets/images/article_image_6.png
  AssetGenImage get articleImage6 =>
      const AssetGenImage('assets/images/article_image_6.png');

  /// File path: assets/images/image_1.png
  AssetGenImage get image1 => const AssetGenImage('assets/images/image_1.png');

  /// File path: assets/images/image_2.png
  AssetGenImage get image2 => const AssetGenImage('assets/images/image_2.png');

  /// File path: assets/images/image_3.png
  AssetGenImage get image3 => const AssetGenImage('assets/images/image_3.png');

  /// File path: assets/images/intersect_line.svg
  SvgGenImage get intersectLine =>
      const SvgGenImage('assets/images/intersect_line.svg');

  /// List of all assets
  List<dynamic> get values => [
        articleImage1,
        articleImage2,
        articleImage3,
        articleImage4,
        articleImage5,
        articleImage6,
        image1,
        image2,
        image3,
        intersectLine
      ];
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

  ImageProvider provider() => AssetImage(_assetName);

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
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
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
