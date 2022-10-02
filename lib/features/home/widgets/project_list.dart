import 'package:flutter/material.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/insets/inset.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final projects = <Project>[
      Project(
        title: 'Digital Factory',
        label: 'Product Design',
        content: 'The Digital Factory is in charge of the digitalization of'
            ' products sold online by Veepee. We provide shooting, storage,'
            ' data writing, media management and staffing solutions for our'
            ' collaborators.',
        thumbnail: Assets.images.image1.image(),
        link: '',
      ),
      Project(
        title: 'ligne roset',
        label: 'Redesign of the website',
        content: 'ligne roset is a French modern furniture company founded by'
            ' Antoine Roset in 1860.',
        thumbnail: Assets.images.image2.image(),
      ),
      Project(
        title: 'maxfield',
        label: 'Redesign of the website',
        content: 'Los Angeles luxury boutique with curated designer and vintage'
            ' collections for men and women.',
        thumbnail: Assets.images.image3.image(),
      ),
    ];

    return ListView.separated(
      itemCount: projects.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Inset(child: projects[index]);
      },
      separatorBuilder: (context, index) {
        return Assets.images.intersectLine.svg();
      },
    );
  }
}
