import 'package:flutter/material.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/shared.dart';

class Article extends StatelessWidget {
  const Article({
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
      small: (context, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: child,
        );
      },
      large: (context, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: child,
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
              color: AppColors.background,
              border: Border.all(color: AppColors.text),
            ),
            child: thumbnail ??
                Assets.images.articleImage1.image(fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ArticleNoPic(
              title: title,
              label: label,
              content: content,
            ),
          ),
        ],
      ),
    );
  }
}
