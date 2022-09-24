import 'package:flutter/widgets.dart';
import 'package:hpm_portfolio/gen/fonts.gen.dart';
import 'package:hpm_portfolio/shared/colors/colors.dart';
import 'package:hpm_portfolio/shared/typography/typography.dart';

/// App Text Style Definitions
class AppTextStyle {
  static const _baseTextStyle = TextStyle(
    // package: 'app_ui',
    fontFamily: FontFamily.timesNewerRoman,
    color: AppColors.text,
    fontWeight: AppFontWeight.regular,
  );

  /// Display 1 - Bold / Title Large
  static TextStyle get titleLarge => _baseTextStyle.copyWith(
        fontSize: 22,
        fontWeight: AppFontWeight.bold,
        height: 1.3,
        letterSpacing: 1.02,
      );

  /// Title - Regular / Title Medium
  static TextStyle get titleMedium => _baseTextStyle.copyWith(
    fontFamily: FontFamily.spaceGrotesk,
    fontSize: 20,
    fontWeight: AppFontWeight.semiBold,
    height: 1.3,
    letterSpacing: 1.02,
  );

  /// Title - Small / Title Small
  static TextStyle get titleSmall => _baseTextStyle.copyWith(
    fontFamily: FontFamily.spaceGrotesk,
    fontSize: 15,
    fontWeight: AppFontWeight.semiBold,
    height: 1.3,
    letterSpacing: 1.15,
  );

  /// Default - Regular / Body Large
  static TextStyle get bodyLarge => _baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: AppFontWeight.regular,
        height: 1.5,
      );

  /// Caption - Regular / Label Medium
  static TextStyle get labelMedium => _baseTextStyle.copyWith(
    fontFamily: FontFamily.spaceGrotesk,
    fontSize: 12,
    fontWeight: AppFontWeight.regular,
    height: 1.6,
  );
}
