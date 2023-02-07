import 'package:flutter/material.dart';

class Tapable extends StatelessWidget {
  const Tapable({
    super.key,
    required this.cursor,
    this.onTap,
    this.child,
  });

  final MouseCursor cursor;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: cursor,
      child: GestureDetector(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
