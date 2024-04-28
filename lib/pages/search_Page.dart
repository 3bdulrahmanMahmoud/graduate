import 'package:flutter/material.dart';
import 'package:incubtor/widgets/Back_Icon.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [BackIcon(), Text('Cases')],
          )
        ],
      ),
    );
  }
}
