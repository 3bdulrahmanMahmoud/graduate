import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/cubit/User_cubit.dart';
import 'package:incubtor/pages/Login/Sign_In_view.dart';
import 'package:incubtor/widgets/Login_Field.dart';
import 'package:incubtor/widgets/Add_And_delete_case_button.dart';
import 'package:incubtor/widgets/signCaseButton.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

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
              const BackButton(),
              const Text(
                'login as parents',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          SizedBox(
            height: 20,
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
            height: 10,
          ),

          SizedBox(
            width: 200,
            child: LOgInField(
              mycontroler: SignInpassword,
              icon: const Icon(Icons.lock),
              text: 'Password',
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
            height: MediaQuery.sizeOf(context).height * .1,
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
            height: MediaQuery.sizeOf(context).height * .1,
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
