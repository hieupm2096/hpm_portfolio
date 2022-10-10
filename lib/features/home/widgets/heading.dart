import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hpm_portfolio/features/home/blocs/about/about_cubit.dart';
import 'package:hpm_portfolio/features/home/widgets/heading_shimmer.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:layout/layout.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final padding = context.layout.value<double>(
      xs: 16,
      sm: 16,
      md: 32,
      lg: 12,
    );
    final gutter = context.layout.value<double>(xs: 24, sm: 36, md: 56, lg: 64);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.textTheme.displayLarge),
          SizedBox(height: gutter),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Assets.icons.icLinkedin.svg(),
                const SizedBox(width: 8),
                Text('alexisdoveil', style: context.textTheme.titleLarge),
              ],
            ),
          ),
          SizedBox(height: gutter),
        ],
      ),
    );
  }
}

class HeadingBlocWrapper extends StatelessWidget {
  const HeadingBlocWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AboutCubit, AboutState>(
      listener: (context, state) {
        state.maybeWhen(
          () {},
          failure: (error) {
            debugPrint(error.toString());
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          SizedBox.shrink,
          loading: HeadingShimmer.new,
          success: (data) {
            return Heading(title: data.intro ?? '');
          },
          orElse: SizedBox.shrink,
        );
      },
    );
  }
}
