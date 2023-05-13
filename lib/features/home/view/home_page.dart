import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:layout/layout.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = context.layout.value<double>(
      xs: 16,
      sm: 32,
      md: 64,
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              AdaptiveBuilder(
                xs: (context) => const _HomeSmall(),
                sm: (context) => const _HomeMedium(),
                md: (context) => const _HomeLarge(),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeSmall extends StatelessWidget {
  const _HomeSmall();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingWrapper(),
        Table(
          border: TableBorder.all(color: AppColors.text),
          children: const [
            TableRow(
              children: [
                TableCell(child: CategoryHeader(title: 'About')),
              ],
            ),
            TableRow(children: [TableCell(child: AboutWrapper())]),
            TableRow(
              children: [
                TableCell(child: CategoryHeader(title: 'Work')),
              ],
            ),
            TableRow(children: [TableCell(child: ProjectListBlocWrapper())]),
            TableRow(
              children: [
                TableCell(child: CategoryHeader(title: 'Good readings')),
              ],
            ),
            TableRow(children: [TableCell(child: ArticleListWrapper())]),
          ],
        ),
      ],
    );
  }
}

class _HomeMedium extends StatelessWidget {
  const _HomeMedium();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingWrapper(),
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
          child: AboutWrapper(),
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
                TableCell(child: ProjectListBlocWrapper()),
                TableCell(child: ArticleListWrapper()),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _HomeLarge extends StatelessWidget {
  const _HomeLarge();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingWrapper(),
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
                TableCell(child: AboutWrapper()),
                TableCell(child: ProjectListBlocWrapper()),
                TableCell(child: ArticleListWrapper()),
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
              ..onTap = () async {
                await _launchUrl('https://flutter.dev');
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
              ..onTap = () async {
                await _launchUrl('https://www.linkedin.com/in/alexisdoveil');
              },
          ),
          const TextSpan(text: ' for the fascinating design, '),
          TextSpan(
            text: 'floriankarsten',
            style: context.textTheme.labelMedium!.copyWith(
              color: AppColors.textAlt,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await _launchUrl(
                  'https://floriankarsten.github.io/space-grotesk',
                );
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
              ..onTap = () async {
                await _launchUrl('https://mschf.xyz');
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

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    final canLaunch = await canLaunchUrl(uri);
    if (canLaunch) {
      await launchUrl(uri);
    }
  }
}
