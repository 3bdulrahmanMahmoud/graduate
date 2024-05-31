// ignore_for_file: non_constant_identifier_names

import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:incubtor/pages/OnboardingPage/onboarding.dart';

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
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('asset/images/Group 215.png'),
                ],
              ),
              SizedBox(
                height: heightQuery * .04,
              ),
              SizedBox(
                width: WidthQuery*.3,
                height: heightQuery*.3,
                child: Image.asset(
                  'asset/images/photo_2023-11-06_22-48-31 1.png',
                  fit: BoxFit.scaleDown,
                  
                ),
              ),
              
             
              const Text(
                'My Incubtor',
                style: TextStyle(fontSize: 30,color: Colors.white),textAlign: TextAlign.center,
                           ),
            ],
          ),
        ),
      ),
      nextScreen: const OnBoarding(),
      backgroundColor: const Color(0xffF59E0B),
      splashIconSize: MediaQuery.of(context).size.height,
    );
  }
}
