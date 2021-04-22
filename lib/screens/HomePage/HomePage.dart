import 'package:flutter/material.dart';
import 'package:the_social_app/constants/Constantcolors.dart';
import 'package:the_social_app/screens/ChatRoom/ChatRoom.dart';
import 'package:the_social_app/screens/Feed/Feed.dart';
import 'package:the_social_app/screens/Profile/Profile.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'HomepageHelpers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ConstantColors constantColors = ConstantColors();
  final PageController homePageController = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.darkColor,
      body: PageView(
        controller: homePageController,
        children: [
          Feed(),
          ChatRoom(),
          Profile(),
        ],
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (page) {
          setState(() {
            pageIndex = page;
          });
        },
      ),
       bottomNavigationBar: bottomNavBar() ,
       
    );
  }
}
