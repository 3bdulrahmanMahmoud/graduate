
import 'package:flutter/material.dart';

class signInCaseButton extends StatelessWidget {
  signInCaseButton(
      {super.key,
      required this.color,
      required this.textcase,
      required this.TextColor,
      required this.image});
  Color color;
  String textcase;
  Color TextColor;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 140,
      height: 40,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * .2,
              height: MediaQuery.of(context).size.height * .05,
              child: Image.asset(image)),
          Text(
            '$textcase',
            style: TextStyle(
                color: TextColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
    ;
  }
}
