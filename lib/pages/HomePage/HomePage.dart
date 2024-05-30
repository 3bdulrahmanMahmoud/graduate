import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:incubtor/pages/Login/Login_Page.dart';
import 'package:incubtor/pages/Notification/NotificationPage.dart';
import 'package:incubtor/pages/Profiles/profilePage.dart';
import 'package:incubtor/pages/Welcome/WelcomePage.dart';
import 'package:incubtor/pages/search/search_Page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final items = <Widget>[
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.notifications),
    Icon(Icons.person)
  ];

  List screens = [
    WelcomePage(),
    SearchPage(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    
      
       screens[index],
      bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor: Color(0xffbacF59E0B),
          backgroundColor: Color(0xffFBD79B),
          color: Color(0xffD97706),
          index: index,
          items: items,
          onTap: (index) => setState(() {
                this.index = index;
              })),
    );
  }
}
