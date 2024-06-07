import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/cubit/User_cubit.dart';
import 'package:incubtor/pages/Login/Sign_In_view.dart';
import 'package:incubtor/widgets/Login_Field.dart';
import 'package:incubtor/widgets/Add_And_delete_case_button.dart';
import 'package:incubtor/widgets/signCaseButton.dart';

class LoginBody extends StatefulWidget {
  LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

bool _showPassword = false;

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            obscureText: !_showPassword,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(color: Colors.black)),
              suffixIcon: IconButton(
                  icon: Icon(
                      _showPassword ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  }),
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
              onTap: () => context.read<LoginCubit>().signin(
                  SignInEmail: SignInEmail.text,
                  SignInpassword: SignInpassword.text),
              child: CaseButton(
                  color: color_buttons,
                  textcase: "Sign In",
                  TextColor: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 17),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, 'register'),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      fontSize: 17,
                      color: color_buttons,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .35,
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
                width: MediaQuery.of(context).size.width * .35,
                child: line,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .08,
          ),

          SizedBox(
            width: 350,
            height: MediaQuery.sizeOf(context).height * .07,
            child: InkWell(
              child: signInCaseButton(
                  color: color_buttons,
                  textcase: "Sign in with google",
                  TextColor: Colors.white,
                  image: 'asset/images/Google.png'),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          SizedBox(
            width: 200,
            height: MediaQuery.sizeOf(context).height * .07,
            child: signInCaseButton(
                color: color_buttons,
                textcase: "Sign in with Facebook",
                TextColor: Colors.white,
                image: 'asset/images/Facebook.png'),
          ),
        ],
      ),
    );
  }
}
