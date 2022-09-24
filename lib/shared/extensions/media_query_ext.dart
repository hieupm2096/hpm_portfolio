import 'package:flutter/material.dart';

extension MediaQueryExt on BuildContext {
  /// Return the same as MediaQuery.of(context)
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Return the same as MediaQuery.of(context).size
  Size get size => mediaQuery.size;

  /// Return the same as MediaQuery.of(context).size.width
  double get width => mediaQuery.size.width;

  /// Return the same as MediaQuery.of(context).size.height
  double get height => mediaQuery.size.height;
}
