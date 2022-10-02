import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hpm_portfolio/shared/insets/inset.dart';
import 'package:hpm_portfolio/shared/shared.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Inset(
      child: MarkdownBody(
        data: '''
Hello there, I’m Alexis 👋🏻, a Paris based designer currently focused on building design systems and shaping relevant interfaces. I’m deeply passionate about creating bridge between business vision and users expectations.

As a **(UX) designer**, I love working with agile methodologies in the whole lifecycle of a product in collaboration with the product manager and the developers : organizing workshops, listening to our users an shaping with them the tool they will use
every day.

As a **front-end designer**, I undertand the development team and — when I am not developping it myself — I always design with the front-end skills of the team in mind. I am used to implement my prototypes in vanilla HTML/CSS, JSX/CSS-in-JS or  ELM. 
Besides my job I am a huge music-lover, a fitness addict, a book lover, a aesthetic admirer, a relentless onlooker & sometimes a geek.

I am currently learning p5.js for the purpose of making generative art.
''',
        styleSheet: MarkdownStyleSheet.fromTheme(context.theme).copyWith(
          p: context.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
