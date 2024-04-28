
import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/pages/incubtPage.dart';
import 'package:incubtor/widgets/Back_Icon.dart';
import 'package:incubtor/widgets/GeneralButton.dart';
import 'package:incubtor/widgets/customCaseButton.dart';
import 'package:incubtor/widgets/custom_Field.dart';

class IncubtorPage2 extends StatelessWidget {
  const IncubtorPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 20,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 42,
              width: 295,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackIcon(),
                  Text(
                    'Cases found in the incubator',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 118,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFBD79B),
              ),
            ),
            Container(
                width: 350,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: CaseButton(
                        color: Colors.white,
                        textcase: 'Add a Case',
                        TextColor: Colors.grey,
                      ),
                    ),
                    CaseButton(
                      color: color_buttons,
                      textcase: 'Delete Case',
                      TextColor: Colors.white,
                    )
                  ],
                )),
            Sizebox,
            SizedBox(
              width: 350,
              child: CustomField(
                icon: Icon(Icons.person),
                text: 'Enter Your Name',
              ),
            ),
            Sizebox,
            SizedBox(
              width: 350,
              child: CustomField(
                  icon: Icon(Icons.phone_android_rounded),
                  text: 'Enter your Phone Number'),
            ),
            Sizebox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 90,
                  child: CustomField(
                      icon: Icon(Icons.calendar_today), text: 'day'),
                ),
                Sizebox2,
                Sizebox2,
                SizedBox(
                  width: 90,
                  child: CustomField(text: 'code:'),
                )
              ],
            ),
            Sizebox,
            SizedBox(
              width: 200,
              child: GeneralButton(
                text: 'Delete',
              ),
            )
          ],
        ),
      ),
    );
  }
}
