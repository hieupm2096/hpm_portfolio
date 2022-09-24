import 'package:flutter/material.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:hpm_portfolio/shared/widgets/article.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookWidgets {
  static WidgetbookComponent get instance {
    return WidgetbookComponent(
      name: 'Widgets',
      useCases: [
        WidgetbookUseCase(
          name: 'Article No Pic',
          builder: (context) {
            return ArticleNoPic(
              title: context.knobs.text(
                label: 'title',
                initialValue: 'What makes a great design outcome?',
              ),
              label: context.knobs.text(
                label: 'label',
                initialValue: 'designsnote',
              ),
              content: context.knobs.text(
                label: 'content',
                initialValue:
                    'As designers and design leaders, we want our efforts '
                    'and the efforts of our teams to result in '
                    'something truly great…',
              ),
              link: context.knobs.text(
                label: 'link',
                initialValue: 'abc',
              ),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Header',
          builder: (context) {
            return Header(
              title: context.knobs.text(
                label: 'text',
                initialValue: 'Work',
              ),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Project',
          builder: (context) {
            return Project(
              title: context.knobs.text(
                label: 'title',
                initialValue: 'Digital Factory by VeePee',
              ),
              label: context.knobs.text(
                label: 'label',
                initialValue: 'Product Design',
              ),
              content: context.knobs.text(
                label: 'content',
                initialValue:
                    'The Digital Factory is in charge of the digitalization of'
                    ' products sold online by Veepee. We provide shooting,'
                    ' storage, data writing, media management and staffing'
                    ' solutions for our collaborators.',
              ),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Project List',
          builder: (context) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ProjectList(
                title: context.knobs.text(label: 'title', initialValue: 'Work'),
              ),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Article',
          builder: (context) {
            return Article(
              title: context.knobs.text(
                label: 'title',
                initialValue: 'What makes a great design outcome?',
              ),
              label: context.knobs.text(
                label: 'label',
                initialValue: 'designsnote',
              ),
              content: context.knobs.text(
                label: 'content',
                initialValue:
                    'As designers and design leaders, we want our efforts '
                    'and the efforts of our teams to result in '
                    'something truly great…',
              ),
              link: context.knobs.text(
                label: 'link',
                initialValue: 'abc',
              ),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Article List',
          builder: (context) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ArticleList(
                title: context.knobs.text(
                  label: 'title',
                  initialValue: 'Good Readings',
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
