// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:incubtor/pages/NotificationPage.dart';
import 'package:incubtor/pages/WelcomePage.dart';
import 'package:incubtor/pages/profilePage.dart';
import 'package:incubtor/pages/search_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final items = <Widget>[
    const Icon(Icons.home),
    const Icon(Icons.search),
    const Icon(Icons.notifications),
    const Icon(Icons.person)
  ];

  List screens = [
    const WelcomePage(),
    const SearchPage(),
    const NotificationPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor: const Color(0xffbacF59E0B),
          backgroundColor: const Color(0xffFBD79B),
          color: const Color(0xffD97706),
          index: index,
          items: items,
          onTap: (index) => setState(() {
                this.index = index;
              })),
    );
  }
}
