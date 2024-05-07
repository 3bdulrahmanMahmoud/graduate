import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/pages/Incubator/incubtPage.dart';
import 'package:incubtor/pages/Visiting/VisitingPage.dart';
import 'package:incubtor/widgets/Login_Field.dart';
import 'package:incubtor/widgets/customCaseButton.dart';
import 'package:incubtor/widgets/signCaseButton.dart';

class SignINPage extends StatelessWidget {
  const SignINPage({super.key});

  @override
  Widget build(BuildContext context) {
    double WidthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    Widget heightSize = SizedBox(
      height: MediaQuery.of(context).size.height * .08,
    );
    Widget line = Container(
      height: 1,
      color: Colors.grey,
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            heightSize,
            //the back icon and login text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BackButton(),
                Sizebox2,
                Text(
                  'login as parents',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            sized,
            sized,
            SizedBox(
              width: WidthQuery * .80,
              child: LOgInField(
                icon: Icon(Icons.email),
                text: 'Email',
              ),
            ),
            sized,
            SizedBox(
              width: WidthQuery * .80,
              child: LOgInField(
                icon: Icon(Icons.lock),
                text: 'Password',
              ),
            ),
            sized,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            heightSize,
            SizedBox(
              width: WidthQuery * .8,
              height: heightQuery * .06,
              child: CaseButton(
                  color: color_buttons,
                  textcase: "Sign In",
                  TextColor: Colors.white),
            ),
            sized,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account\?',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                      fontSize: 17,
                      color: color_buttons,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            heightSize,
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: line,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'OR',
                    style: TextStyle(fontSize: 22, color: color_buttons),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: line,
                ),
              ],
            ),
            sized,

            SizedBox(
              width: WidthQuery * .8,
              height: heightQuery * .06,
              child: signInCaseButton(
                  color: color_buttons,
                  textcase: "Sign in with google",
                  TextColor: Colors.white,
                  image: 'asset/images/photo_2023-11-06_22-48-31 1.png'),
            ),
            sized,

            SizedBox(
              width: WidthQuery * .8,
              height: heightQuery * .06,
              child: signInCaseButton(
                  color: color_buttons,
                  textcase: "Sign in with Facebook",
                  TextColor: Colors.white,
                  image: 'asset/images/photo_2023-11-06_22-48-31 1.png'),
            ),
          ],
        ),
      ),
    );
  }
}