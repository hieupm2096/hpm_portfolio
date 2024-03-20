import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hpm_portfolio/features/home/controllers/about/about_controller.dart';
import 'package:hpm_portfolio/features/home/widgets/heading_shimmer.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/shared.dart';
import 'package:layout/layout.dart';
import 'package:url_launcher/url_launcher.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.intro,
    this.linkedInUrl,
    this.githubUrl,
    this.emailUrl,
    this.phoneNumber,
  });

  final String intro;
  final String? linkedInUrl;
  final String? githubUrl;
  final String? emailUrl;
  final String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    final padding = context.layout.value<double>(
      xs: 16,
      sm: 16,
      md: 12,
    );
    final gutter = context.layout.value<double>(xs: 24, sm: 36, md: 56);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MarkdownBody(
            data: intro,
            softLineBreak: true,
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
                icon: Assets.icons.icLinkedin,
              ),
              const SizedBox(width: 16),
              Assets.icons.icSlash.svg(height: 32),
              const SizedBox(width: 16),
              _HeadingLink(
                url: githubUrl,
                icon: Assets.icons.icGithub,
              ),
              const SizedBox(width: 16),
              Assets.icons.icSlash.svg(height: 32),
              const SizedBox(width: 16),
              _HeadingLink(
                email: emailUrl,
                icon: Assets.icons.icMail,
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
  final SvgGenImage icon;

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
            Builder(
              builder: (context) {
                return icon.svg(
                  colorFilter: ColorFilter.mode(
                    DefaultTextStyle.of(context).style.color!,
                    BlendMode.srcIn,
                  ),
                );
              },
            ),
            const SizedBox(width: 8),
            Builder(
              builder: (context) {
                return Text(
                  label ?? '',
                  style: context.textTheme.titleLarge!.copyWith(
                    color: DefaultTextStyle.of(context).style.color,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HeadingWrapper extends ConsumerWidget {
  const HeadingWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAbout = ref.watch(getAboutProvider);

    return asyncAbout.when(
      data: (data) {
        return Heading(
          intro: data.intro ?? '',
          linkedInUrl: data.linkedin,
          githubUrl: data.github,
          emailUrl: data.email,
          phoneNumber: data.phone,
        );
      },
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: HeadingShimmer.new,
    );
  }
}
