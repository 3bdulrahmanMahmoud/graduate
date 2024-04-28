import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';

class ProfileFiled extends StatelessWidget {
  ProfileFiled({super.key, required this.image, required this.text});
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Container(
          width: 43,
          height: 43,
          decoration: BoxDecoration(
              color: Color(0xffFBD79B),
              borderRadius: BorderRadius.circular(40)),
          child: Image.asset(
            image,
            fit: BoxFit.scaleDown,
          )),
      SizedBox(
        width: 40,
      ),
      Expanded(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        width: 100,
      ),
      Icon(
        Icons.arrow_forward_ios,
        color: color_buttons,
      ),
    ]);
  }
}
