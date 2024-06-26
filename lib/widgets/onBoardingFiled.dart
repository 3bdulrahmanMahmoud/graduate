// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class OnboardF extends StatelessWidget {
  OnboardF(
      {super.key,
      this.image,
      required this.page,
      required this.frame,
      required this.text});
  String? image;
  String page;
  String frame;
  String text;

  @override
  Widget build(BuildContext context) {
    double WidthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => Navigator.pushReplacementNamed(context, 'loginPage'),
          child: const Text(
            'Skip',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Image.asset(
          '$image',
          width: WidthQuery * .9,
          height: heightQuery * .7,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: WidthQuery * .05, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(frame),
            InkWell(
              onTap: () =>
                  Navigator.restorablePushReplacementNamed(context, page),
              child: Container(
                width: WidthQuery * .16,
                height: heightQuery * .08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffD97706)),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
