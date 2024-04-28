// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';

class GeneralButton extends StatelessWidget {
  GeneralButton({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color_buttons,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey)),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    );
  }
}
