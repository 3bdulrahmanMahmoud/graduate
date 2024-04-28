// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField({super.key, this.icon, required this.text});
  Icon? icon;
  String text;

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
