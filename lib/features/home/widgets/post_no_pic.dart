import 'package:flutter/material.dart';
import 'package:hpm_portfolio/core/core.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:jiffy/jiffy.dart';

class PostNoPic extends StatelessWidget {
  const PostNoPic({
    super.key,
    required this.title,
    required this.label,
    this.publishedDate,
    required this.content,
    this.onTap,
  });

  final String title;
  final String label;
  final DateTime? publishedDate;
  final String content;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Tapable(
          onTap: onTap,
          child: Builder(
            builder: (context) {
              return Text(
                title,
                style: context.textTheme.titleLarge!.copyWith(
                  color: context.defaultTextStyle.color,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '$label'
          '${publishedDate != null ? ' — ' : ''}'
          '${publishedDate != null ? Jiffy.parseFromDateTime(publishedDate!).format(pattern: DateFormat.MMMMddyyyy) : ''}',
          style: context.textTheme.labelMedium!.copyWith(
            color: AppColors.textAlt,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: context.textTheme.bodyLarge,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 12),
        if (onTap != null)
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
