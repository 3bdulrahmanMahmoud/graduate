import 'package:flutter/material.dart';
import 'package:incubtor/widgets/Custom_button.dart';
import 'package:incubtor/widgets/custom_Field.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double WidthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    Widget heightbox = SizedBox(
      height: heightQuery * .05,
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'asset/images/photo_2023-11-06_22-48-31 2.jpg',
                        fit: BoxFit.contain,
                        height: heightQuery * .1,
                      ),
                      SizedBox(
                        height: heightQuery * .025,
                      ),
                      Text(
                        'Welcome👋 ',
                        style: TextStyle(fontSize: 22),
                      )
                    ],
                  ),
                  SizedBox(
                      height: heightQuery * .25,
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
              heightbox,
              Container(
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
                            text: ' Incubato',
                            image: 'asset/images/Group incubator.png'),
                        CustomButton(
                            routeName: 'casepage',
                            text: ' Cases',
                            image: 'asset/images/cases.png')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ),
        ),
      ),
    );
  }
}
