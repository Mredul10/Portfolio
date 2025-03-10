import 'package:flutter/material.dart';
import 'package:portfolio/Reposnive/responsive.dart';
import 'package:portfolio/Utils/text_style.dart';

class MyProfileIntro extends StatelessWidget {
  const MyProfileIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: Responsive.isMobile(context)
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Center(
                child: Container(
                  width: 250, // Fixed width for the profile picture
                  height: 250, // Fixed height for the profile picture
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Circular profile image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 8,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/me.jpg",
                      fit: BoxFit.cover, // Ensures the image fills the container properly
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Responsive.isMobile(context)
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Center(
                child: SizedBox(
                  height: 250,
                  width: Responsive.isMobile(context)
                      ? Responsive.widthOfScreen(context) * 0.85
                      : 450,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          spreadRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello!",
                            style: TextStyle(
                              fontSize: Responsive.isMobile(context) ? 36 : 40,
                              color: Color(0xFF4756DF),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            "I'm Mredul Halder,\na Software Engineer\nSpecializing in Flutter App Development and UI Design.",
                            style: AppTextStyle.heebo20Norwhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
