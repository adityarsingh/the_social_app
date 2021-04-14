import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingHelpers with ChangeNotifier {
  Widget bodyImagee(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/login4.png'),
      )),
    );
  }
}
