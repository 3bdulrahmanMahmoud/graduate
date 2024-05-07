

import 'package:flutter/material.dart';

class LOgInField extends StatelessWidget {
  Icon icon;
  String text;

  LOgInField({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
