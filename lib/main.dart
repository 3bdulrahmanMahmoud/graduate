import 'package:flutter/material.dart';
import 'package:incubtor/pages/CasePage.dart';
import 'package:incubtor/pages/HomePage.dart';
import 'package:incubtor/pages/Home_Parent_page.dart';
import 'package:incubtor/pages/Login_Page.dart';
import 'package:incubtor/pages/VisitingPage.dart';
import 'package:incubtor/pages/Visiting_Parent_Page.dart';
import 'package:incubtor/pages/WelcomePage.dart';
import 'package:incubtor/pages/incubtPage.dart';
import 'package:incubtor/pages/incuptPage2.dart';
import 'package:incubtor/pages/onboarding2.dart';
import 'package:incubtor/pages/onboarding3.dart';
import 'package:incubtor/pages/personal_profile.dart';
import 'package:incubtor/pages/reports_page.dart';
import 'package:incubtor/pages/splash_screen.dart';
import 'package:incubtor/pages/upload_File.dart';

void main() {
  runApp(const GradutionProject());
}

class GradutionProject extends StatelessWidget {
  const GradutionProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'casepage': (context) => const CasePage(),
        'incubtPage': (context) => IncubatorPage(),
        'incubtPage2': (context) => const IncubtorPage2(),
        'uploadFile': (context) => const uploadFile(),
        'VisitingPage': (context) => const VistitingPage(),
        'onboardin2': (context) => const onBoarding2(),
        'onboardin3': (context) => const onBoarding3(),
        'loginPage': (context) => const LoginPage(),
        'homePage': (context) => HomePage(),
        'welcomePage': (context) => const WelcomePage(),
        'homeParentPage': (context) => const HomeParentPage(),
        'editProfilePage': (context) => const PersonalProfile(),
        'VisitingParent': (context) => VisitingParent(),
        'ReportsPage': (context) => ReportsPage(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
