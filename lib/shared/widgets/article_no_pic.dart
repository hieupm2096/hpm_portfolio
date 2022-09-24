import 'package:flutter/material.dart';
import 'package:hpm_portfolio/core/core.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:jiffy/jiffy.dart';

class ArticleNoPic extends StatelessWidget {
  const ArticleNoPic({
    super.key,
    required this.title,
    required this.label,
    this.publishedDate,
    required this.content,
    this.link,
  });

  final String title;
  final String label;
  final DateTime? publishedDate;
  final String content;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: context.textTheme.titleLarge,
        ),
        const SizedBox(height: 4),
        Text(
          '$label'
          ' — '
          '${Jiffy(publishedDate ?? DateTime.now()).format(DateFormat.MMMMddyyyy)}',
          style: context.textTheme.labelMedium!.copyWith(
            color: AppColors.textAlt,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: context.textTheme.bodyLarge,
        ),
        const SizedBox(height: 12),
        if (link != null)
          Text(
            'Read more →',
            style: context.textTheme.labelMedium,
          )
        else
          Text(
            'COMING SOON',
            style: context.textTheme.labelMedium!.copyWith(
              color: AppColors.alert,
            ),
          ),
      ],
    );
  }
}
