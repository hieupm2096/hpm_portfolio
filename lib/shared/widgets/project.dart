import 'package:flutter/material.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/shared.dart';

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
    return ResponsiveLayoutBuilder(
      small: (context, child) => Container(
        padding: const EdgeInsets.all(16),
        child: child,
      ),
      large: (context, child) => Container(
        padding: const EdgeInsets.all(32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
    );
  }
}
