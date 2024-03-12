import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/insets/inset.dart';
import 'package:hpm_portfolio/shared/shared.dart';

class ProjectListShimmer extends StatelessWidget {
  const ProjectListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const coverShimmerHeight = 320.0;
    const titleShimmerHeight = 32.0;
    const shimmerHeight = 16.0;
    const gutterHeight = 12.0;
    const sectionHeight = 24.0;

    return Inset(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerWidget(height: coverShimmerHeight),
            SizedBox(height: gutterHeight),
            ShimmerWidget(height: titleShimmerHeight),
            SizedBox(height: gutterHeight),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: ShimmerWidget(height: shimmerHeight),
            ),
            SizedBox(height: gutterHeight),
            ShimmerWidget(height: shimmerHeight),
            SizedBox(height: gutterHeight),
            ShimmerWidget(height: shimmerHeight),
            SizedBox(height: gutterHeight),
            ShimmerWidget(height: shimmerHeight),
            SizedBox(height: sectionHeight),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
      ),
    );
  }
}
