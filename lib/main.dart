import 'package:flutter/material.dart';
import 'screens/tracker.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'images/coronavirus.png',
        ),
        nextScreen: Tracker(),
        splashIconSize: 100,
        splashTransition: SplashTransition.decoratedBoxTransition,
        duration: 3000,
      ),
    );
  }
}
