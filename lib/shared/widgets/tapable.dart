import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/shared.dart';

class Tapable extends StatefulWidget {
  const Tapable({
    super.key,
    this.onTap,
    required this.child,
  });

  final VoidCallback? onTap;

  final Widget child;

  @override
  State<Tapable> createState() => _TapableState();
}

class _TapableState extends State<Tapable> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor:
          widget.onTap != null ? SystemMouseCursors.click : MouseCursor.defer,
      onEnter: widget.onTap != null
          ? (_) {
              setState(() => _isHovered = true);
            }
          : null,
      onExit: widget.onTap != null
          ? (_) => setState(() => _isHovered = false)
          : null,
      child: GestureDetector(
        onTap: widget.onTap,
        child: DefaultTextStyle(
          style: TextStyle(
            color: _isHovered ? AppColors.secondary : AppColors.text,
            // color: AppColors.secondary,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
