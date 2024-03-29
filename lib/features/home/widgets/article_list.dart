import 'package:flutter/material.dart';
import 'package:hpm_portfolio/features/home/widgets/intersect_category.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/insets/inset.dart';
import 'package:jiffy/jiffy.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final articles = <Article>[
      Article(
        title: 'Quantifying the value of UX',
        label: 'uxdesign.cc',
        publishedDate: Jiffy([2020, 04, 17]).dateTime,
        content: 'When evaluating your products, consider a hierarchy of'
            ' customer needs. At the most basic level, customers need to be'
            ' able to complete their goals using your products.',
        thumbnail: Assets.images.articleImage1.image(),
        link: '',
      ),
      Article(
        title: 'Bite sized learning',
        label: 'booklet.io',
        publishedDate: Jiffy([2020, 02, 03]).dateTime,
        content: 'Browse hundreds of booklets on design, business, freelancing'
            ' & more. Learn new skills & insights, fast.',
        thumbnail: Assets.images.articleImage2.image(),
      ),
      Article(
        title: 'This is the one skill designers need to develop most in 2020',
        label: 'Fast Company',
        publishedDate: Jiffy([2020, 01, 09]).dateTime,
        content: 'Legendary designer Don Norman takes designers to task for'
            ' elevating craft above all else, when what matters most is the'
            ' willingness to collaborate.',
        thumbnail: Assets.images.articleImage3.image(),
      ),
      Article(
        title: 'A new way to rhythm your Design System with golden ratio'
            ' + arithmetic',
        label: 'uxdesign.cc',
        publishedDate: Jiffy([2020, 01, 05]).dateTime,
        content: 'Determine spacings as part of an arithmetic sequence similar'
            ' to that of Fibonacci.',
        thumbnail: Assets.images.articleImage4.image(),
      ),
      Article(
        title: 'Hit the Mute Button: Why Everyone Is Trying to Silence the'
            ' Outside World',
        label: 'Guardian',
        publishedDate: Jiffy([2019, 11, 09]).dateTime,
        content: 'Uber has introduced a feature that allows customers to stop'
            ' their drivers from talking. But there’s growing evidence that'
            ' cutting ourselves off like this isn’t healthy.',
        thumbnail: Assets.images.articleImage5.image(),
      ),
      Article(
        title: 'How can brands battle the climate crisis?',
        label: 'designnote',
        publishedDate: Jiffy([2019, 06, 12]).dateTime,
        content: 'As governments and businesses declare a state of climate'
            ' emergency and aim for zero carbon emissions, we believe it’s time'
            ' to use this power for good. That’s why, at the start of a new'
            ' decade, we’re celebrating ‘zero heroes’ - brands encouraging'
            ' positive behaviours in a time of crisis.',
        thumbnail: Assets.images.articleImage6.image(),
      ),
    ];

    final maps = <String, List<Article>>{};
    for (final e in articles) {
      final publishedDate = e.publishedDate;
      if (publishedDate != null) {
        final month = Jiffy(publishedDate).format('MMMM');
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
