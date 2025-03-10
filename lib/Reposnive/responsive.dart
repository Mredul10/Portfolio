import 'package:flutter/material.dart';

class Responsive{
  //for Mobile
   static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }
  //for web
    static double widthOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  //hight
  static double heightOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}