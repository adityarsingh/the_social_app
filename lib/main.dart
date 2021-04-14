import 'package:flutter/material.dart';
import 'package:the_social_app/constants/Constantcolors.dart';
import 'package:the_social_app/services/LandingPage/landingHelpers.dart';
import 'package:the_social_app/services/splashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return MultiProvider(
        child: MaterialApp(
          home: Splashscreen(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              accentColor: constantColors.blueColor,
              fontFamily: 'Poppins',
              canvasColor: Colors.transparent),
        ),
        providers: [
          ChangeNotifierProvider(
            create: (_) => LandingHelpers(),
          )
        ]);
  }
}
