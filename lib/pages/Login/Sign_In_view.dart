// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incubtor/core/cashe/cashe_helper.dart';
import 'package:incubtor/cubit/User_cubit.dart';
import 'package:incubtor/pages/Login/signInBody.dart';

TextEditingController SignInEmail = TextEditingController();
TextEditingController SignInpassword = TextEditingController();

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          casheHelper().saveData(key: "isLogin", value: true);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('success'),
            ),
          );

          Navigator.pushReplacementNamed(context, 'homeParentPage');
        } else if (state is SignInFailuer) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return  Scaffold(
          body: LoginBody(),
        );
      },
    );
  }
}

Widget line = Container(
  height: 1,
  color: Colors.grey,
);
