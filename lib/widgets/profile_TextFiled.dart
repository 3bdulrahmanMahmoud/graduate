import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:incubtor/constant/constant_File.dart';

class ProfileTextFiled extends StatelessWidget {
   ProfileTextFiled({this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color_buttons,
          ),
        ),
        hintText: text,
        suffixIcon: Icon(
          Icons.edit_square,
          color: color_buttons,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color_buttons,
          ),
        ),
      ),
    );
    ;
  }
}
