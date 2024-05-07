import 'package:flutter/material.dart';
import 'package:incubtor/pages/Visiting/Visiting_Parent_Page.dart';
import 'package:incubtor/widgets/custom_Field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(
                    Icons.filter_list_sharp,
                    color: Colors.black54,
                    size: mediaQueryWidth * .08,
                  ),
                )
              ],
            ),
            sized,
            CustomField(
              text: 'search',
              icon: Icon(Icons.search),
            ),
            sized,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recently search',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'clear all',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),
                ),
              ],
            ),
            sized,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.search),
                Text(
                  'Tabark Maternity and Childern Hospital',
                  overflow: TextOverflow.fade,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
