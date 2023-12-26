import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splashIconSize: double.infinity,
      animationDuration: Duration(seconds: 3),
      splash: SafeArea(
        child: Image.asset(
          'assets/gif/country.gif',
          fit: BoxFit.fill,
        ),
      ),
      nextScreen: HomePage(),
    );
  }
}
