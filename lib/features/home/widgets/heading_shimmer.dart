import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/widgets/widgets.dart';
import 'package:layout/layout.dart';

class HeadingShimmer extends StatelessWidget {
  const HeadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const shimmerHeight = 48.0;
    const gutterHeight = 16.0;

    final gutter = context.layout.value<double>(
      xs: 24,
      sm: 36,
      md: 56,
      lg: 64,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FractionallySizedBox(
          widthFactor: 0.3,
          child: ShimmerWidget(height: shimmerHeight),
        ),
        const SizedBox(height: gutterHeight),
        const FractionallySizedBox(
          widthFactor: 0.7,
          child: ShimmerWidget(height: shimmerHeight),
        ),
        const SizedBox(height: gutterHeight),
        const FractionallySizedBox(
          widthFactor: 0.7,
          child: ShimmerWidget(height: shimmerHeight),
        ),
        const SizedBox(height: gutterHeight),
        const FractionallySizedBox(
          widthFactor: 0.4,
          child: ShimmerWidget(height: shimmerHeight),
        ),
        SizedBox(height: gutter),
      ],
    );
  }
}
