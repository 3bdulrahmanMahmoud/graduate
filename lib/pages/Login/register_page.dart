// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/cubit/User_cubit.dart';
import 'package:incubtor/pages/Incubator/incubtPage.dart';
import 'package:incubtor/pages/Visiting/VisitingPage.dart';
import 'package:incubtor/widgets/Login_Field.dart';
import 'package:incubtor/widgets/Add_And_delete_case_button.dart';

TextEditingController emailSignUp = TextEditingController();
TextEditingController passwordSignUp = TextEditingController();
TextEditingController FirstName = TextEditingController();
TextEditingController lastName = TextEditingController();

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

bool ischecked = true;

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double WidthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    Widget heightSize = SizedBox(
      height: MediaQuery.of(context).size.height * .08,
    );

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );Navigator.pushNamed(context, 'homeParentPage');
        } else if (state is SignInFailuer) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(children: [
                heightSize,
                //the back icon and login text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const BackButton(),
                    Sizebox2,
                    const Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                sized,
                SizedBox(
                  width: WidthQuery * .80,
                  child: LOgInField(
                    mycontroler: FirstName,
                    icon: const Icon(Icons.person_3_outlined),
                    text: 'Enter your name',
                  ),
                ),
                sized,
                SizedBox(
                  width: WidthQuery * .80,
                  child: LOgInField(
                    mycontroler: lastName,
                    icon: const Icon(Icons.person_3_outlined),
                    text: 'Enter your name',
                  ),
                ),

                sized,
                SizedBox(
                  width: WidthQuery * .80,
                  child: LOgInField(
                    mycontroler: emailSignUp,
                    icon: const Icon(Icons.email),
                    text: 'Enter Your Email',
                  ),
                ),

                sized,
                SizedBox(
                  width: WidthQuery * .80,
                  child: LOgInField(
                    mycontroler: passwordSignUp,
                    icon: const Icon(Icons.lock),
                    text: 'Password',
                  ),
                ),
                sized,

                heightSize,
                SizedBox(
                  width: WidthQuery * .8,
                  height: heightQuery * .06,
                  child: InkWell(
                    onTap: () {
                      context.read<LoginCubit>().signUp(
                          email: emailSignUp.text,
                          firstName: FirstName.text,
                          lastName: lastName.text,
                          password: passwordSignUp.text);
                    },
                    child: CaseButton(
                        color: color_buttons,
                        textcase: "Sign up",
                        TextColor: Colors.white),
                  ),
                ),
                sized,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: ischecked,
                      onChanged: (value) {
                        setState(() {
                          ischecked = value!;
                        });
                      },
                    ),
                    Text(
                      'you have already an account \?  ',
                      style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).width * .04),
                    ),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: MediaQuery.sizeOf(context).width * .05,
                            color: color_buttons,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
