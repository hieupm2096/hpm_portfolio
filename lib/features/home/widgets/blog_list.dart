import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hpm_portfolio/data/models/models.dart';
import 'package:hpm_portfolio/features/home/controllers/blog/blog_controller.dart';
import 'package:hpm_portfolio/features/home/widgets/intersect_category.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/insets/inset.dart';
import 'package:jiffy/jiffy.dart';

class BlogList extends StatelessWidget {
  const BlogList({
    super.key,
    this.blogs,
  });

  final List<PostModel>? blogs;

  @override
  Widget build(BuildContext context) {
    final blogWidgets = <Blog>[];
    if (blogs?.isNotEmpty ?? false) {
      blogWidgets.addAll(
        blogs!.map(
          (e) {
            // TODO(hieupm): uncomment it later
            // final blurhash = e.cover?.blurhash;
            final coverUrl = e.cover?.url;

            return Blog(
              title: e.title ?? '',
              label: e.author?.name ?? '',
              content: e.description ?? '',
              publishedDate: e.publishedAt,
              thumbnail: coverUrl != null
                  ? CachedNetworkImage(
                      imageUrl: coverUrl,
                      // TODO(hieupm): uncomment it later
                      // placeholder: (context, url) {
                      //   if (blurhash != null) {
                      //     return BlurHash(hash: blurhash);
                      //   }
                      //
                      //   return const SizedBox.shrink();
                      // },
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                      ),
                    )
                  : const SizedBox.shrink(),
            );
          },
        ),
      );
    } else {
      blogWidgets.addAll(
        [
          Blog(
            title: 'Quantifying the value of UX',
            label: 'uxdesign.cc',
            publishedDate: Jiffy.parseFromList([2020, 04, 17]).dateTime,
            content: 'When evaluating your products, consider a hierarchy of'
                ' customer needs. At the most basic level, customers need to be'
                ' able to complete their goals using your products.',
            thumbnail: Assets.images.articleImage1.image(),
            link: '',
          ),
          Blog(
            title: 'Bite sized learning',
            label: 'booklet.io',
            publishedDate: Jiffy.parseFromList([2020, 02, 03]).dateTime,
            content: 'Browse hundreds of booklets on design, business,'
                ' freelancing & more. Learn new skills & insights, fast.',
            thumbnail: Assets.images.articleImage2.image(),
          ),
          Blog(
            title: 'This is the one skill designers need to develop most in'
                ' 2020',
            label: 'Fast Company',
            publishedDate: Jiffy.parseFromList([2020, 01, 09]).dateTime,
            content: 'Legendary designer Don Norman takes designers to task for'
                ' elevating craft above all else, when what matters most is the'
                ' willingness to collaborate.',
            thumbnail: Assets.images.articleImage3.image(),
          ),
          Blog(
            title: 'A new way to rhythm your Design System with golden ratio'
                ' + arithmetic',
            label: 'uxdesign.cc',
            publishedDate: Jiffy.parseFromList([2020, 01, 05]).dateTime,
            content: 'Determine spacings as part of an arithmetic sequence'
                ' similar to that of Fibonacci.',
            thumbnail: Assets.images.articleImage4.image(),
          ),
          Blog(
            title: 'Hit the Mute Button: Why Everyone Is Trying to Silence the'
                ' Outside World',
            label: 'Guardian',
            publishedDate: Jiffy.parseFromList([2019, 11, 09]).dateTime,
            content: 'Uber has introduced a feature that allows customers to'
                " stop their drivers from talking. But there's growing"
                " evidence that cutting ourselves off like this isn't healthy.",
            thumbnail: Assets.images.articleImage5.image(),
          ),
          Blog(
            title: 'How can brands battle the climate crisis?',
            label: 'designnote',
            publishedDate: Jiffy.parseFromList([2019, 06, 12]).dateTime,
            content: 'As governments and businesses declare a state of climate'
                " emergency and aim for zero carbon emissions, we believe it's"
                " time to use this power for good. That's why, at the start of"
                " a new decade, we're celebrating 'zero heroes' - brands"
                ' encouraging positive behaviors in a time of crisis.',
            thumbnail: Assets.images.articleImage6.image(),
          ),
        ],
      );
    }

    final maps = <String, List<Blog>>{};
    for (final e in blogWidgets) {
      final publishedDate = e.publishedDate;
      if (publishedDate != null) {
        final month = Jiffy.parseFromDateTime(publishedDate).format(
          pattern: 'MMMM',
        );
        if (maps.containsKey(month)) {
          maps[month]?.add(e);
        } else {
          maps[month] = [e];
        }
      }
    }

    final list = maps.entries
        .map(
          (e) => [
            IntersectCategory(title: e.key),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: e.value.length,
              itemBuilder: (context, index) => HorizontalInset(
                child: e.value[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 24),
            ),
            const SizedBox(height: 24),
            Assets.images.intersectLine.svg(),
          ],
        )
        .expand((element) => element)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }
}

class BlogListWrapper extends ConsumerWidget {
  const BlogListWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncBlogs = ref.watch(getBlogsProvider);

    return asyncBlogs.when(
      data: (data) => BlogList(blogs: data),
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: BlogListShimmer.new,
    );
  }
}
