
import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/pages/Incubator/incubtPage.dart';
import 'package:incubtor/widgets/Back_Icon.dart';
import 'package:incubtor/widgets/customCaseButton.dart';
import 'package:incubtor/widgets/custom_Field.dart';


class uploadFile extends StatelessWidget {
  const uploadFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackIcon(),
                  Text(
                    'Upload_file',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Sizebox,
            CustomField(
              text: 'Enter Your Name',
              icon: Icon(Icons.person),
            ),
            Sizebox,
            CustomField(
              text: 'Enter Your Email',
              icon: Icon(Icons.email),
            ),
            Sizebox,
            CustomField(
              text: 'Enter Your Phone Number',
              icon: Icon(Icons.phone_iphone_rounded),
            ),
            Sizebox,
            Icon(
              Icons.upload_file,
              size: 114,
              color: color_buttons,
            ),
            Sizebox,
            SizedBox(
              width: 300,
              height: 56,
              child: CaseButton(
                  color: color_buttons,
                  textcase: 'Upload File',
                  TextColor: Colors.white),
            ),
            Sizebox,
            SizedBox(
              width: 300,
              height: 56,
              child: CaseButton(
                  color: color_buttons,
                  textcase: 'Send',
                  TextColor: Colors.white),
            ),
          ]),
        ),
      ),
    );
  }
}
