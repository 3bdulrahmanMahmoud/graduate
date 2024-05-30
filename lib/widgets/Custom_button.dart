// ignore_for_file: must_be_immutable, file_names, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      required this.image,
      required this.routeName});
  String text;
  String image;
  String routeName;

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: mediaQueryWidth * .3,
        height: mediaQueryHeight * .2,
        decoration: BoxDecoration(
            color: const Color(0xffFBD79B),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, routeName);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffbacf59e0b),
              ),
              child: Text(
                text,
                style: const TextStyle(color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
