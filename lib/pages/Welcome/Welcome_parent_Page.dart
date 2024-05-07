import 'package:flutter/material.dart';
import 'package:incubtor/widgets/Custom_button.dart';
import 'package:incubtor/widgets/custom_Field.dart';

class WlecomParentPage extends StatelessWidget {
  const WlecomParentPage({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: mediaQueryWidth * .2,
                            height: mediaQueryHeight * .2,
                            child: Image.asset(
                              'asset/images/photo_2023-11-06_22-48-31 2.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Welcome Parent👋 ')
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 200,
                        child: Image.asset(
                          'asset/images/Group 221.png',
                          fit: BoxFit.contain,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomField(
                    icon: Icon(Icons.search),
                    text: 'Search',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Container(
                  width: mediaQueryWidth,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                              routeName: 'incubtPage',
                              text: ' Reports',
                              image: 'asset/images/circle-user.png'),
                          CustomButton(
                              routeName: 'VisitingParent',
                              text: ' Visiting Dates',
                              image: 'asset/images/visiting.png')
                        ],
                      ),
                      Center(
                        child: CustomButton(
                            routeName: "ReportsPage",
                            text: '  View a File',
                            image: 'asset/images/uploadFile.png'),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
