// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LOgInField extends StatelessWidget {
  Icon icon;
  String text;
  TextEditingController mycontroler;

  LOgInField(
      {super.key,
      required this.icon,
      required this.text,
      required this.mycontroler});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: mycontroler,
      decoration: InputDecoration(
          prefixIcon: icon,
          hintText: (text),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: Colors.black)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: Colors.black)),
          focusColor: Colors.white),
    );
  }
}
