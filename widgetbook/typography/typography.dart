import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookTypography {
  static WidgetbookComponent get instance {
    return WidgetbookComponent(
      name: 'Typography',
      useCases: [
        WidgetbookUseCase(
          name: 'Display 2 - Italic',
          builder: (context) {
            return Text(
              context.knobs.text(
                label: 'text',
                initialValue: 'Hi. I am Hieu',
              ),
              style: context.textTheme.displayLarge,
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Display 2 Alt - Italic',
          builder: (context) {
            return Text(
              context.knobs.text(
                label: 'text',
                initialValue: 'Hi. I am Hieu',
              ),
              style: context.textTheme.displaySmall,
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Display 1 - Bold',
          builder: (context) {
            return Text(
              context.knobs.text(
                label: 'text',
                initialValue: 'What makes a great design outcome?',
              ),
              style: context.textTheme.titleLarge,
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Title - Regular',
          builder: (context) {
            return Text(
              context.knobs.text(
                label: 'text',
                initialValue: 'Work',
              ),
              style: context.textTheme.titleMedium,
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Title - Small',
          builder: (context) {
            return Text(
              context.knobs.text(
                label: 'text',
                initialValue: 'September',
              ),
              style: context.textTheme.titleSmall,
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Default - Regular',
          builder: (context) {
            return Text(
              context.knobs.text(
                label: 'text',
                initialValue: 'As designers and design leaders, we want'
                    ' our efforts and the efforts of our teams to'
                    ' result in something truly great…',
              ),
              style: context.textTheme.bodyLarge,
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Caption - Regular',
          builder: (context) {
            return Text(
              context.knobs.text(
                label: 'text',
                initialValue: 'designnotes - November 9, 2019',
              ),
              style: context.textTheme.labelMedium,
            );
          },
        ),
      ],
    );
  }
}
