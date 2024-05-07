
import 'package:flutter/material.dart';
import 'package:incubtor/widgets/Back_Icon.dart';
import 'package:incubtor/widgets/ChildCase.dart';
import 'package:incubtor/widgets/custom_Field.dart';

class CasePage extends StatelessWidget {
  const CasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BackIcon(),
              Text(
                'Cases',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 40,
              child: CustomField(
                text: 'search',
                icon: Icon(Icons.search),
              ),
            ),
          ),
          ChildCase(),
          ChildCase(),
          ChildCase(),
          ChildCase(),
          ChildCase(),
          ChildCase(),
        ],
      ),
    );
  }
}
