import 'package:flutter/material.dart';
import 'package:incubtor/widgets/onBoardingFiled.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: OnboardF(
              image: 'asset/images/Group 37167.png',
              page: 'onboardin2',
              frame: 'asset/images/Frame 4.png',
              text: 'Find a lot of specialist doctors in one place',
            )),
      ),
    );
  }
}
