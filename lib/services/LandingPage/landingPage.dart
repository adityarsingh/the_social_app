import 'package:flutter/material.dart';
import 'package:the_social_app/constants/Constantcolors.dart';
import 'package:the_social_app/services/LandingPage/landingHelpers.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  final ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.whiteColor,
      body: Stack(
        children: [
          bodyColor(),
          Provider.of<LandingHelpers>(context, listen: false)
              .bodyImagee(context)
        ],
      ),
    );
  }

  bodyColor() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
            0.5,
            0.9
          ],
              colors: [
            constantColors.darkColor,
            constantColors.blueGreyColor
          ])),
    );
  }
}
