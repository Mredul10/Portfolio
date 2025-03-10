import 'package:flutter/material.dart';
import 'package:portfolio/Reposnive/responsive.dart';
import 'package:portfolio/Utils/text_style.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 40 : 80,
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              'About Me',style: AppTextStyle.heebo25Norwhite,
            ),
          ),
          Text("On a journey of lifelong learning, I'm currently pursuing a degree in Computer Science Engineering at Dhaka International University. Passionate about software engineer, Flutter developer specializing in Flutter, Firebase, API integration, and UI design. With a keen eye for detail and a drive for excellence, I strive to create seamless and engaging mobile applications.\n\n I'm eager to apply my knowledge and grow as a professional in the Computer Science Engineering world.\n\nThank you for visiting my portfolio. Feel free to explore my projects and reach out if you'd like to connect!",
          style:  TextStyle(
              fontSize: Responsive.isMobile(context) ? 18 : 20,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}