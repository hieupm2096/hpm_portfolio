import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class Inset extends StatelessWidget {
  const Inset({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final padding = context.layout.value<double>(xs: 16, md: 24, lg: 32);
    return Padding(
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}

class HorizontalInset extends StatelessWidget {
  const HorizontalInset({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final padding = context.layout.value<double>(xs: 16, md: 24, lg: 32);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: child,
    );
  }
}
