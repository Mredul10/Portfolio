import 'package:flutter/material.dart';
import 'package:portfolio/Reposnive/responsive.dart';
import 'package:portfolio/Utils/colors.dart';
import 'package:portfolio/Utils/text_style.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('My Top Skills',style: AppTextStyle.heebo25Norwhite,),
        SizedBox(height: 15,),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context)
                ? 10
                : Responsive.widthOfScreen(context) / 4,
          ),
          child: const Wrap(
            children: [
             SkillCard(
                url:
                    'assets/images/flutter.jpg',
              ),
              SkillCard(
                url:
                    'assets/images/dart.png',
              ),
              SkillCard(
                  url:
                      'assets/images/firebase.jpg'),
              SkillCard(
                  url:
                      'assets/images/api.png'),
              SkillCard(
                  url:
                      'assets/images/Figma.png'),
              SkillCard(
                  url:
                      'assets/images/github.png'),
              SkillCard(
                  url:
                      'assets/images/photoshop.png'),
              SkillCard(
                  url:
                      'assets/images/illustrator.png'),
            ],
          ),
        ),
      ],
    );
  }
}
class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: shadoColor,
              blurRadius: 6,
              spreadRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          height: !Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          width: !Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          child: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(10)
                : const EdgeInsets.all(30),
                child: Image.asset(url),
          ),
        ),
      ),
    );
  }
}