import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incubtor/core/api/Dio_consumer.dart';
import 'package:incubtor/core/cashe/cashe_helper.dart';
import 'package:incubtor/cubit/User_cubit.dart';
import 'package:incubtor/pages/HomePage/Home_Parent_page.dart';
import 'package:incubtor/pages/HomePage/Home_incabator_Page.dart';
import 'package:incubtor/pages/Incubator/incubtPage.dart';
import 'package:incubtor/pages/Incubator/incuptPage2.dart';
import 'package:incubtor/pages/Login/Login_Page.dart';
import 'package:incubtor/pages/Login/Sign_In_view.dart';
import 'package:incubtor/pages/Login/register_page.dart';
import 'package:incubtor/pages/OnboardingPage/onboarding2.dart';
import 'package:incubtor/pages/OnboardingPage/onboarding3.dart';
import 'package:incubtor/pages/Profiles/personal_profile.dart';
import 'package:incubtor/pages/ServicesPage/CasePage.dart';
import 'package:incubtor/pages/ServicesPage/reports_page.dart';
import 'package:incubtor/pages/ServicesPage/upload_File.dart';
import 'package:incubtor/pages/Visiting/VisitingPage.dart';
import 'package:incubtor/pages/Visiting/Visiting_Parent_Page.dart';
import 'package:incubtor/pages/Welcome/WelcomePage.dart';
import 'package:incubtor/pages/search/SearchParentPage.dart';
import 'package:incubtor/pages/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  casheHelper().init();
  
  runApp(const GradutionProject());
}

class GradutionProject extends StatelessWidget {
  const GradutionProject({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(DioConsumer(dio: Dio())),
      child: MaterialApp(
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
          'sign_in': (context) => SigninView(),
          'register': (context) => RegisterPage(),
          "search_parent_page":(context) => SearchParentPage(),
        },
        debugShowCheckedModeBanner: false,
        home:  SplashScreen(),
      ),
    );
  }
}
