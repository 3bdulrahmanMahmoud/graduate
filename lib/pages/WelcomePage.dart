
import 'package:flutter/material.dart';
import 'package:incubtor/widgets/Custom_button.dart';
import 'package:incubtor/widgets/custom_Field.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                            'asset/images/photo_2023-11-06_22-48-31 2.jpg'),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Welcome👋 ')
                      ],
                    ),
                    SizedBox(
                        height: 200,
                        child: Image.asset('asset/images/Group 221.png'))
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
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomButton(
                              routeName: 'incubtPage',
                              text: ' Incubato',
                              image: 'asset/images/Group incubator.png'),
                          CustomButton(
                              routeName: 'casepage',
                              text: ' Cases',
                              image: 'asset/images/cases.png')
                        ],
                      ),
                      Row(
                        children: [
                          CustomButton(
                              routeName: "uploadFile",
                              text: ' Upload file',
                              image: 'asset/images/uploadFile.png'),
                          CustomButton(
                              routeName: 'VisitingPage',
                              text: ' Visiting',
                              image: 'asset/images/visiting.png')
                        ],
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
