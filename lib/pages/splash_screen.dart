import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:incubtor/pages/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double WidthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    return AnimatedSplashScreen(
      splash: SizedBox(
        height: heightQuery,
        width: WidthQuery,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('asset/images/Group 215.png'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: heightQuery * .25,
              child: Column(
                children: [
                  Image.asset(
                    'asset/images/photo_2023-11-06_22-48-31 1.png',
                  ),
                  const Text(
                    'My Incubtor',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      nextScreen: OnBoarding(),
      backgroundColor: Color(0xffF59E0B),
      splashIconSize: MediaQuery.of(context).size.height,
    );
  }
}
