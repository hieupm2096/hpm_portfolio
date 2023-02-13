import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hpm_portfolio/features/home/blocs/about/about_cubit.dart';
import 'package:hpm_portfolio/features/home/widgets/heading_shimmer.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:layout/layout.dart';
import 'package:url_launcher/url_launcher.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.title,
    this.linkedInUrl,
    this.githubUrl,
    this.emailUrl,
    this.phoneNumber,
  });

  final String title;
  final String? linkedInUrl;
  final String? githubUrl;
  final String? emailUrl;
  final String? phoneNumber;

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
          MarkdownBody(
            data: title,
            styleSheet: MarkdownStyleSheet.fromTheme(context.theme).copyWith(
              p: context.textTheme.displayLarge,
            ),
          ),
          SizedBox(height: gutter),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 16,
            children: [
              _HeadingLink(
                url: linkedInUrl,
                icon: Assets.icons.icLinkedin.svg(),
              ),
              const SizedBox(width: 16),
              Assets.icons.icSlash.svg(height: 32),
              const SizedBox(width: 16),
              _HeadingLink(
                url: githubUrl,
                icon: Assets.icons.icGithub.svg(),
              ),
              const SizedBox(width: 16),
              Assets.icons.icSlash.svg(height: 32),
              const SizedBox(width: 16),
              _HeadingLink(
                email: emailUrl,
                icon: Assets.icons.icMail.svg(),
              ),
            ],
          ),
          SizedBox(height: gutter),
        ],
      ),
    );
  }
}

class _HeadingLink extends StatelessWidget {
  const _HeadingLink({
    this.url,
    this.email,
    required this.icon,
  }) : assert(
          url != null && email == null || url == null && email != null,
          'Email and URL must not exist at the same time',
        );

  final String? url;
  final String? email;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    String? label;
    if (url != null) {
      label = Uri.parse(url!).pathSegments.last;
    } else if (email != null) {
      label = email!.split('@').first;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Tapable(
        cursor: SystemMouseCursors.click,
        onTap: () async {
          if (url != null) {
            final uri = Uri.parse(url!);
            await launchUrl(uri);
          } else if (email != null) {
            final uri = Uri(scheme: 'mailto', path: email);
            await launchUrl(uri);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 8),
            Text(
              label ?? '',
              style: context.textTheme.titleLarge,
            ),
          ],
        ),
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
            return Heading(
              title: data.intro ?? '',
              linkedInUrl: data.linkedin,
              githubUrl: data.github,
              emailUrl: data.email,
              phoneNumber: data.phone,
            );
          },
          orElse: SizedBox.shrink,
        );
      },
    );
  }
}
