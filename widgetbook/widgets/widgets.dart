import 'package:flutter/material.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookWidgets {
  static WidgetbookComponent get instance {
    return WidgetbookComponent(
      name: 'Widgets',
      useCases: [
        WidgetbookUseCase(
          name: 'Article No Pic',
          builder: (context) {
            return PostNoPic(
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
                initialValue: 'As designers and design leaders, we want our '
                    'efforts and the efforts of our teams to result in '
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
          name: 'Category Header',
          builder: (context) {
            return CategoryHeader(
              title: context.knobs.text(
                label: 'text',
                initialValue: 'Work',
              ),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Heading',
          builder: (context) {
            return Heading(
              intro: context.knobs.text(
                label: 'text',
                initialValue: 'Hi. I am Alexis,'
                    '\nA french designer who can code.'
                    '\nI currently design productive tools at Veepee ↗'
                    '\nwhile always looking for interesting freelance '
                    'projects.',
              ),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'About',
          builder: (context) {
            return const About();
          },
        ),
        WidgetbookUseCase(
          name: 'About Loading',
          builder: (context) {
            return const AboutShimmer();
          },
        ),
        WidgetbookUseCase(
          name: 'Work',
          builder: (context) {
            return Work(
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
                initialValue: 'The Digital Factory is in charge of the '
                    'digitalization of products sold online by Veepee. We '
                    'provide shooting, storage, data writing, media management '
                    'and staffing solutions for our collaborators.',
              ),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Project List',
          builder: (context) {
            return const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: WorkList(),
            );
          },
        ),
        WidgetbookUseCase(
          name: 'Blog',
          builder: (context) {
            return Blog(
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
                initialValue: 'As designers and design leaders, we want our '
                    'efforts and the efforts of our teams to result in '
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
            return const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: BlogList(),
            );
          },
        ),
      ],
    );
  }
}
