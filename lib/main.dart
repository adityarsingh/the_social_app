import 'package:flutter/material.dart';
import 'package:the_social_app/constants/Constantcolors.dart';
import 'package:the_social_app/services/Authentication.dart';
import 'package:the_social_app/services/LandingPage/LandingServices.dart';
import 'package:the_social_app/services/LandingPage/landingHelpers.dart';
import 'package:the_social_app/services/Splashscreen/splashScreen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
            create: (_) => LandingServices(),
          ),
          ChangeNotifierProvider(
            create: (_) => Authentication(),
          ),
          ChangeNotifierProvider(
            create: (_) => LandingHelpers(),
          )
        ]);
  }
}
