import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/pages/incubtPage.dart';
import 'package:incubtor/widgets/Back_Icon.dart';
import 'package:incubtor/widgets/customCaseButton.dart';
import 'package:incubtor/widgets/custom_Field.dart';

class VisitingParent extends StatelessWidget {
  const VisitingParent({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Sizebox,
              SizedBox(
                width: mediaQueryWidth * .75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackIcon(),
                    Text(
                      'Visiting',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              sized,
              SizedBox(
                width: mediaQueryWidth * .75,
                child: CustomField(
                  text: 'Enter Your Name',
                  icon: Icon(Icons.person),
                ),
              ),
              sized,
              SizedBox(
                width: mediaQueryWidth * .75,
                child: CustomField(
                  text: 'Enter Your Email',
                  icon: Icon(Icons.email),
                ),
              ),
              sized,
              SizedBox(
                width: mediaQueryWidth * .75,
                child: CustomField(
                  text: 'Enter Your Phone',
                  icon: Icon(Icons.phone_iphone_rounded),
                ),
              ),
              sized,
              Row(
                children: [
                  SizedBox(
                    width: mediaQueryWidth * .3,
                    child: CustomField(text: 'Code:'),
                  ),
                ],
              ),
              sized,
              SizedBox(
                width: mediaQueryWidth * .75,
                child: CustomField(
                  text: 'The Time:',
                  icon: Icon(Icons.watch_later_outlined),
                ),
              ),
              sized,
              SizedBox(
                width: mediaQueryWidth * .75,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'comments :',
                      hintStyle: TextStyle(color: Colors.amber),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(color: Colors.black)),
                      focusColor: Colors.white),
                ),
              ),
              sized,
              SizedBox(
                width: mediaQueryWidth * .75,
                height: mediaQueryHeight * .07,
                child: CaseButton(
                    color: color_buttons,
                    textcase: 'Send',
                    TextColor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget sized = SizedBox(
  height: 20,
);
