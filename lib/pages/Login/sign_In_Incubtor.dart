import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/pages/Login/Sign_In_view.dart';
import 'package:incubtor/pages/Login/signInBody.dart';
import 'package:incubtor/widgets/Add_And_delete_case_button.dart';
import 'package:incubtor/widgets/Login_Field.dart';

class SignInIncubtor extends StatelessWidget {
  SignInIncubtor({super.key});
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: ListView(
          children: [
            //the back icon and login text

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "loginPage");
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 22,
                    )),
                const Text(
                  'login as parents',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height * .07,
            ),

            SizedBox(
              width: 200,
              child: LOgInField(
                mycontroler: SignInEmail,
                icon: const Icon(Icons.email),
                text: 'Email',
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .07,
            ),

            TextField(
              controller: SignInpassword,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .03,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .06,
            ),

            SizedBox(
              width: 200,
              height: 50,
              child: InkWell(
                onTap: () =>
                    Navigator.pushReplacementNamed(context, 'homePage'),
                child: CaseButton(
                    color: color_buttons,
                    textcase: "Sign In",
                    TextColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
