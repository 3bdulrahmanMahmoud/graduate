// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:incubtor/widgets/onBoardingFiled.dart';

class onBoarding3 extends StatelessWidget {
  const onBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: OnboardF(
          page: 'loginPage',
          frame: 'asset/images/Group 151 (1).png',
          image: 'asset/images/Mask group.png',
          text: 'What are you waiting for, protect your child with my incubator',
        ),
      ),
    );
  }
}
