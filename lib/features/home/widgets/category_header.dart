import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:layout/layout.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final padding = context.layout.value<double>(xs: 16, md: 16, lg: 24);

    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        title,
        style: context.textTheme.titleMedium,
      ),
    );
  }
}
