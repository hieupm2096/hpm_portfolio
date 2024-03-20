import 'package:flutter/material.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/shared.dart';

class Work extends StatelessWidget {
  const Work({
    super.key,
    required this.title,
    required this.label,
    this.publishedDate,
    required this.content,
    this.thumbnail,
    this.onTap,
  });

  final String title;
  final String label;
  final DateTime? publishedDate;
  final String content;
  final Widget? thumbnail;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Tapable(
          onTap: onTap,
          child: thumbnail ?? Assets.images.image1.image(fit: BoxFit.cover),
        ),
        const SizedBox(height: 16),
        PostNoPic(
          onTap: onTap,
          title: title,
          content: content,
          label: label,
          publishedDate: publishedDate,
        ),
      ],
    );
  }
}
