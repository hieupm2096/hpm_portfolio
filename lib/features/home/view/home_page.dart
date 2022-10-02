import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:hpm_portfolio/shared/widgets/footer.dart';
import 'package:layout/layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final padding =
        context.layout.value<double>(xs: 16, sm: 32, md: 32, lg: 64);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              AdaptiveBuilder(
                xs: (context) => const HomeSmall(),
                md: (context) => const HomeMedium(),
                lg: (context) => const HomeLarge(),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeSmall extends StatelessWidget {
  const HomeSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Heading(
          title: 'Hi. I am Alexis,'
              '\nA french designer who can code.'
              '\nI currently design productive tools at Veepee ↗'
              '\nwhile always looking for interesting freelance projects.',
        ),
        Table(
          border: TableBorder.all(color: AppColors.text),
          children: const [
            TableRow(
              children: [
                TableCell(child: CategoryHeader(title: 'About')),
              ],
            ),
            TableRow(children: [TableCell(child: About())]),
            TableRow(
              children: [
                TableCell(child: CategoryHeader(title: 'Work')),
              ],
            ),
            TableRow(children: [TableCell(child: ProjectList())]),
            TableRow(
              children: [
                TableCell(child: CategoryHeader(title: 'Good readings')),
              ],
            ),
            TableRow(children: [TableCell(child: ArticleList())]),
          ],
        ),
      ],
    );
  }
}

class HomeMedium extends StatelessWidget {
  const HomeMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Heading(
          title: 'Hi. I am Alexis,'
              '\nA french designer who can code.'
              '\nI currently design productive tools at Veepee ↗'
              '\nwhile always looking for interesting freelance projects.',
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.text),
          ),
          child: const CategoryHeader(title: 'About'),
        ),
        const DecoratedBox(
          decoration: BoxDecoration(
            border: Border.symmetric(
              vertical: BorderSide(color: AppColors.text),
            ),
          ),
          child: About(),
        ),
        Table(
          border: TableBorder.all(color: AppColors.text),
          columnWidths: const {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(2),
          },
          children: const [
            TableRow(
              children: [
                TableCell(child: CategoryHeader(title: 'Work')),
                TableCell(
                  child: CategoryHeader(title: 'Good readings'),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: ProjectList()),
                TableCell(child: ArticleList())
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class HomeLarge extends StatelessWidget {
  const HomeLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Heading(
          title: 'Hi. I am Alexis,'
              '\nA french designer who can code.'
              '\nI currently design productive tools at Veepee ↗'
              '\nwhile always looking for interesting freelance projects.',
        ),
        Table(
          border: TableBorder.all(color: AppColors.text),
          columnWidths: const {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(5),
            2: FlexColumnWidth(4),
          },
          children: const [
            TableRow(
              children: [
                TableCell(child: CategoryHeader(title: 'About')),
                TableCell(child: CategoryHeader(title: 'Work')),
                TableCell(child: CategoryHeader(title: 'Good readings')),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: About()),
                TableCell(child: ProjectList()),
                TableCell(child: ArticleList()),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class FooterText extends StatelessWidget {
  const FooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 4,
      text: TextSpan(
        children: [
          const TextSpan(text: 'Made with love using '),
          TextSpan(
            text: 'Flutter',
            style: context.textTheme.labelMedium!.copyWith(
              color: AppColors.textAlt,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint('onTap');
              },
          ),
          const TextSpan(text: '\nThanks to '),
          TextSpan(
            text: 'Alexis Doveil',
            style: context.textTheme.labelMedium!.copyWith(
              color: AppColors.textAlt,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint('onTap');
              },
          ),
          const TextSpan(text: ' for the fascinating design, '),
          TextSpan(
            text: 'Velvetype',
            style: context.textTheme.labelMedium!.copyWith(
              color: AppColors.textAlt,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint('onTap');
              },
          ),
          const TextSpan(text: ' for the Space Grotek and '),
          TextSpan(
            text: 'MSCHF',
            style: context.textTheme.labelMedium!.copyWith(
              color: AppColors.textAlt,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint('onTap');
              },
          ),
          const TextSpan(text: ' for the Times Newer Roman typeface.'),
        ],
        style: context.textTheme.labelMedium!.copyWith(
          color: AppColors.textAlt,
        ),
      ),
    );
  }
}
