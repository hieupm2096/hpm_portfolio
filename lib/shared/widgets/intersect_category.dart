import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/shared.dart';

class IntersectCategory extends StatelessWidget {
  const IntersectCategory({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (context, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: child,
        );
      },
      large: (context, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: child,
        );
      },
      child: Text(
        title,
        style: context.textTheme.titleSmall!.copyWith(color: AppColors.textAlt),
      ),
    );
  }
}
