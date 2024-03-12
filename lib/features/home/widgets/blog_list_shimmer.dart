import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/insets/inset.dart';
import 'package:hpm_portfolio/shared/shared.dart';

class BlogListShimmer extends StatelessWidget {
  const BlogListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const shimmerHeight = 16.0;
    const gutterHeight = 12.0;

    return Inset(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: ShimmerWidget(
                    height: 140,
                  ),
                ),
                SizedBox(width: 24),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerWidget(height: shimmerHeight),
                      SizedBox(height: gutterHeight),
                      ShimmerWidget(height: shimmerHeight),
                      SizedBox(height: gutterHeight),
                      ShimmerWidget(height: shimmerHeight),
                      SizedBox(height: gutterHeight),
                      FractionallySizedBox(
                        widthFactor: 0.7,
                        child: ShimmerWidget(height: shimmerHeight),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 32),
      ),
    );
  }
}
