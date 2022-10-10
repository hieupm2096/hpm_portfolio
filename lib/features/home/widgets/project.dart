import 'package:flutter/material.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';

class Project extends StatelessWidget {
  const Project({
    super.key,
    required this.title,
    required this.label,
    this.publishedDate,
    required this.content,
    this.link,
    this.thumbnail,
  });

  final String title;
  final String label;
  final DateTime? publishedDate;
  final String content;
  final String? link;
  final Widget? thumbnail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        thumbnail ?? Assets.images.image1.image(fit: BoxFit.cover),
        const SizedBox(height: 16),
        ArticleNoPic(
          title: title,
          content: content,
          label: label,
          link: link,
          publishedDate: publishedDate,
        ),
      ],
    );
  }
}
