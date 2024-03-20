import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {
  /// Return the same as Theme.of(context)
  ThemeData get theme => Theme.of(this);

  /// Return text theme
  TextTheme get textTheme => theme.textTheme;

  /// Return default style
  TextStyle get defaultTextStyle => DefaultTextStyle.of(this).style;
}
