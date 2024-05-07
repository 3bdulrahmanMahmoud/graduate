import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/widgets/customCaseButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double WidthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    height: heightQuery * .3,
                    child: Image.asset('asset/images/Group 214.png')),
              ],
            ),
            Center(
              child: SizedBox(
                  height: heightQuery * .2,
                  child: Image.asset(
                      'asset/images/photo_2023-11-06_22-48-31 1.png')),
            ),
            SizedBox(
              height: heightQuery * .018,
            ),
            Text(
              'My Incubator',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: heightQuery * .036,
            ),
            Text(
              'Let’s get started!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: heightQuery * .054,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, 'homePage'),
              child: SizedBox(
                width: WidthQuery * .75,
                height: heightQuery * .072,
                child: CaseButton(
                    color: color_buttons,
                    textcase: 'login as Incubator',
                    TextColor: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: WidthQuery * .75,
              height: heightQuery * .072,
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, 'homeParentPage'),
                child: CaseButton(
                    color: color_buttons,
                    textcase: 'login as parent',
                    TextColor: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: WidthQuery * .75,
              height: heightQuery * .072,
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, 'sign_in'),
                child: CaseButton(
                    color: Color(0xffE6E6E6),
                    textcase: 'Nearest Incubator',
                    TextColor: Color(0xffFF0000)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
