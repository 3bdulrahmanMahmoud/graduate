
// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:incubtor/pages/Notification/NotificationParentPage.dart';
import 'package:incubtor/pages/Profiles/profile_Parent_Page.dart';
import 'package:incubtor/pages/Welcome/Welcome_parent_Page.dart';
import 'package:incubtor/pages/search/SearchParentPage.dart';


class HomeParentPage extends StatefulWidget {
  const HomeParentPage({super.key});

  @override
  State<HomeParentPage> createState() => _HomeParentPageState();
}

class _HomeParentPageState extends State<HomeParentPage> {
  int index = 0;

  final items = <Widget>[
    const Icon(Icons.home),
    const Icon(Icons.search),
    const Icon(Icons.notifications),
    const Icon(Icons.person)
  ];

  
  List screens = [
   const WlecomParentPage(),
   const SearchParentPage(),
   const NotificationParentPage(),
   const ProfileParentPage()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor:const Color(0xffbacF59E0B),
          backgroundColor:const Color(0xffFBD79B),
          color: const Color(0xffD97706),
          index: index,
          items: items,
          onTap: (index) => setState(() {
                this.index = index;
              })),
    );
    
  }
}
