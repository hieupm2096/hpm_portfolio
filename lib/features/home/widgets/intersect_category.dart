import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:layout/layout.dart';

class IntersectCategory extends StatelessWidget {
  const IntersectCategory({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final horizontalPadding =
        context.layout.value<double>(xs: 16, sm: 16, md: 24, lg: 32);
    final verticalPadding =
        context.layout.value<double>(xs: 16, sm: 16, md: 16, lg: 24);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Text(
        title,
        style: context.textTheme.titleSmall!.copyWith(color: AppColors.textAlt),
      ),
    );
  }
}
