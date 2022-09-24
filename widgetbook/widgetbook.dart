import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:widgetbook/widgetbook.dart';

import 'typography/typography.dart';
import 'widgets/widgets.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      scaffoldBuilder: (context, frame, child) {
        return Scaffold(
          backgroundColor: AppColors.background,
          body: child,
        );
      },
      categories: [
        WidgetbookCategory(
          name: 'material',
          widgets: [
            WidgetbookTypography.instance,
            WidgetbookWidgets.instance,
          ],
        ),
      ],
      appInfo: AppInfo(name: 'Portfolio widgetbook'),
      devices: const [
        Apple.iPhone13Pro,
        Apple.iPhone13ProMax,
        Samsung.s21ultra,
        Desktop.desktop1080p,
        Desktop.desktop1440p,
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: AppTheme.standard,
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
    );
  }
}
