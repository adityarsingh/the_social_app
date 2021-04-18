import 'package:flutter/material.dart';
import 'package:the_social_app/constants/Constantcolors.dart';

class HomePage extends StatelessWidget {
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.redColor,
    );
  }
}
