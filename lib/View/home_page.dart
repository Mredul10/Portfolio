import 'package:flutter/material.dart';
import 'package:portfolio/Reposnive/responsive.dart';
import 'package:portfolio/Utils/colors.dart';
import 'package:portfolio/Utils/text_style.dart';
import 'package:portfolio/View/components/about_me.dart';
import 'package:portfolio/View/components/contact_form.dart';
import 'package:portfolio/View/components/drawer.dart';
import 'package:portfolio/View/components/footer.dart';
import 'package:portfolio/View/components/my_profile_intro.dart';
import 'package:portfolio/View/components/recent_projects.dart';
import 'package:portfolio/View/components/recent_work_experiences.dart';
import 'package:portfolio/View/components/social_icons.dart';
import 'package:portfolio/View/components/top_bar.dart';
import 'package:portfolio/View/components/top_skills.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Mredul Halder',
          style:  AppTextStyle.heebo26NorBlue,
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        toolbarHeight: 70,
        actions: [
          Responsive.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: IconButton(
                    onPressed: () {
                      _globalKey.currentState!.openEndDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: textColor,
                      size: 35,
                    ),
                  ),
                )
              : TopBar(
                  scrollController: _scrollController,
                ),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? MyDrawer(scrollController: _scrollController)
          : null,
          body: SafeArea(child: Stack(
            children: [
              SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    MyProfileIntro(),
                    SizedBox(height: Responsive.isMobile(context) ? 40 : 0),
                    AboutMe(),
                    SizedBox(height: 55),
                    TopSkills(),
                    SizedBox(height: 55),
                    RecentProject(),
                    SizedBox(height: 55),
                    RecentWorkExperiences(),
                    SizedBox(height: 55),
                    ContactForm(),
                    SizedBox(height: 55),
                    Footer(),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              SocialIcons(),
            ],
          ),),
    );
  }
}