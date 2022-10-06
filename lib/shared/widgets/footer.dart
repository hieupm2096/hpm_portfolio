import 'package:flutter/cupertino.dart';
import 'package:hpm_portfolio/features/home/view/home_page.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:layout/layout.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding =
        context.layout.value<double>(xs: 16, sm: 16, md: 24, lg: 32);
    final verticalPadding =
        context.layout.value<double>(xs: 20, sm: 20, md: 30, lg: 40);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.text),
          left: BorderSide(color: AppColors.text),
          right: BorderSide(color: AppColors.text),
        ),
      ),
      child: Row(
        children: const [
          Expanded(child: FooterText()),
        ],
      ),
    );
  }
}
