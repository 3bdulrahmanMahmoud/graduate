// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class CaseButton extends StatelessWidget {
  CaseButton(
      {super.key,
      required this.color,
      required this.textcase,
      required this.TextColor});
  Color color;
  String textcase;
  Color TextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.32,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey)),
      child: Text(
        textcase,
        style: TextStyle(
          color: TextColor,
          fontSize: MediaQuery.of(context).size.width * 0.05,
        ),
      ),
    );
  }
}
