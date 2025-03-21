import 'package:flutter/material.dart';
import 'package:portfolio/Utils/colors.dart';
import 'package:portfolio/View/components/top_bar.dart';

class MyDrawer extends StatelessWidget {
  final ScrollController scrollController;
  const MyDrawer({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(
          Icons.close,
        color: textColor,
        ),
        ),
      ),
      body: Center(
        child: TopBar(scrollController: scrollController),
      ),
    );
  }
}