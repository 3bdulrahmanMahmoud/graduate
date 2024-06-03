import 'package:flutter/material.dart';
import 'package:incubtor/core/cashe/cashe_helper.dart';
import 'package:incubtor/pages/splash/splash_screen.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  void initState() {
    super.initState();
    check();
  }

  Future<void> check() async {
    var isloggedin = await casheHelper().getData(key: 'isLogin');
    if (isloggedin) {
      Navigator.pushReplacementNamed(context, 'homeParentPage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
