import 'package:flutter/material.dart';
import 'package:portfolio/Reposnive/responsive.dart';
import 'package:portfolio/Utils/text_style.dart';


class TopBar extends StatelessWidget {
  final ScrollController scrollController;
  const TopBar({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return isMobile
        ? Column(
            children: topBarData(scrollController, context, isMobile: true),
          )
        : Row(
            children: topBarData(scrollController, context),
          );
  }

  List<Widget> topBarData(
      ScrollController scrollController, BuildContext context,
      {bool isMobile = false}) {
    int scrollDuration = isMobile ? 800 : 500;
    return [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(200,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
          },
          child: Text(
            "About",
            style: AppTextStyle.heebo20NorBlue,
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
         onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
             isMobile ?1050:1100,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
          },
          child: Text(
            "Skill",
            style: AppTextStyle.heebo20NorBlue,
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
     onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
             isMobile ?1500:1750,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
          },
          child: Text(
            "Project",
            style: AppTextStyle.heebo20NorBlue,
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
     onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
             isMobile ?2000:2350,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
          },
          child: Text(
            "Works",
            style: AppTextStyle.heebo20NorBlue,
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ?3000:3750,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
          },
          child: Text(
            'Contact',
            style: AppTextStyle.heebo20NorBlue,
          ),
        ),
      ),
    ];
  }
}