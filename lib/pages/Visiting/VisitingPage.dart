import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/pages/Incubator/incubtPage.dart';
import 'package:incubtor/widgets/Back_Icon.dart';
import 'package:incubtor/widgets/customCaseButton.dart';
import 'package:incubtor/widgets/custom_Field.dart';

class VistitingPage extends StatelessWidget {
  const VistitingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Sizebox,
              SizedBox(
                width: 350,
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
                width: 330,
                child: CustomField(
                  text: 'Enter Your Name',
                  icon: Icon(Icons.person),
                ),
              ),
              sized,
              SizedBox(
                width: 330,
                child: CustomField(
                  text: 'Enter Your Email',
                  icon: Icon(Icons.email),
                ),
              ),
              sized,
              SizedBox(
                width: 330,
                child: CustomField(
                  text: 'Enter Your Phone',
                  icon: Icon(Icons.phone_iphone_rounded),
                ),
              ),
              sized,
              Row(
                children: [
                  SizedBox(width: 150, child: CustomField(text: 'Code:')),
                ],
              ),
              sized,
              SizedBox(
                width: 330,
                child: CustomField(
                  text: 'The Time:',
                  icon: Icon(Icons.watch_later_outlined),
                ),
              ),
              sized,
              SizedBox(
                  width: 330,
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      
                        hintText: 'comments',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                            borderSide: BorderSide(color: Colors.black)),
                        focusColor: Colors.white),
                  )),
              sized,
              SizedBox(
                width: 330,
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
