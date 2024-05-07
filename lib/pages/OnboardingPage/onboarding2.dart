import 'package:flutter/material.dart';
import 'package:incubtor/widgets/onBoardingFiled.dart';

class onBoarding2 extends StatelessWidget {
  const onBoarding2({
    super.key,
  });
  static String id = 'onboard2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: OnboardF(
          page: 'onboardin3',
          image: 'asset/images/Group 37168.png',
          frame: 'asset/images/Group 151.png',
          text: 'Get advice only from a doctor you believe in.',
        ),
      ),
    );
  }
}
