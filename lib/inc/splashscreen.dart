import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:myresume/src/resume.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 3000,
        splash: Column(children: [
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset("assets/images/flutter_ui_dev_logo.png"),
          ),
          // const Text(
          //   "My Resume",
          //   style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //       letterSpacing: 3,
          //       color: Colors.white),
          // ),
        ]),
        nextScreen: const Resume(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        splashIconSize: 150,
        backgroundColor: Colors.white,
      ),
    );
  }
}
