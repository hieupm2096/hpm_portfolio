import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hpm_portfolio/data/models/models.dart';
import 'package:hpm_portfolio/features/home/controllers/work/work_controller.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/insets/inset.dart';

class WorkList extends StatelessWidget {
  const WorkList({
    super.key,
    this.works,
  });

  final List<PostModel>? works;

  @override
  Widget build(BuildContext context) {
    final workWidgets = <Work>[];

    if (works?.isNotEmpty ?? false) {
      workWidgets.addAll(
        works!.map(
          (e) {
            final coverUrl = e.cover?.url;
            final blurhash = e.cover?.blurhash;

            return Work(
              title: e.title ?? '',
              label: e.note ?? '',
              content: e.description ?? '',
              thumbnail: coverUrl != null
                  ? Center(
                      child: CachedNetworkImage(
                        imageUrl: coverUrl,
                        fit: BoxFit.contain,
                        height: 300,
                        fadeInDuration: const Duration(seconds: 1),
                        placeholder: (context, url) {
                          if (blurhash != null) {
                            return SizedBox(
                              height: 300,
                              child: BlurHash(hash: blurhash),
                            );
                          }

                          return const SizedBox.shrink();
                        },
                        errorWidget: (context, url, error) => const Center(
                          child: Icon(
                            Icons.error,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            );
          },
        ),
      );
    } else {
      workWidgets.addAll(
        <Work>[
          Work(
            title: 'Digital Factory',
            label: 'Product Design',
            content: 'The Digital Factory is in charge of the digitalization of'
                ' products sold online by Veepee. We provide shooting, storage,'
                ' data writing, media management and staffing solutions for our'
                ' collaborators.',
            thumbnail: Assets.images.image1.image(),
            link: '',
          ),
          Work(
            title: 'ligne roset',
            label: 'Redesign of the website',
            content: 'ligne roset is a French modern furniture company'
                ' founded by  Antoine Roset in 1860.',
            thumbnail: Assets.images.image2.image(),
          ),
          Work(
            title: 'maxfield',
            label: 'Redesign of the website',
            content: 'Los Angeles luxury boutique with curated designer'
                ' and vintage collections for men and women.',
            thumbnail: Assets.images.image3.image(),
          ),
        ],
      );
    }

    return ListView.separated(
      itemCount: workWidgets.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Inset(child: workWidgets[index]);
      },
      separatorBuilder: (context, index) {
        return Assets.images.intersectLine.svg();
      },
    );
  }
}

class WorkListWrapper extends ConsumerWidget {
  const WorkListWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncWorks = ref.watch(getWorksProvider);

    return asyncWorks.when(
      data: (data) => WorkList(works: data),
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: ProjectListShimmer.new,
    );
  }
}
