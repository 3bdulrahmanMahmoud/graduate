import 'package:flutter/material.dart';

class ChildCase extends StatelessWidget {
  const ChildCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          SizedBox(
              width: 80,
              height: 80,
              child: Image.asset(
                'asset/images/ChildPhoto.png',
              )),
          const SizedBox(
            width: 40,
          ),
          const Column(
            children: [
              Text(
                'Name: ',
                style: TextStyle(color: Color(0xffF59E0B), fontSize: 19),
              ),
              SizedBox(
                height: 20,
              ),
              Text('The Disease: ',
                  style: TextStyle(color: Color(0xffF59E0B), fontSize: 19)),
            ],
          ),
         const SizedBox(
            width: 40,
          ),
         const Text('Code: ',
              style: TextStyle(color: Color(0xffF59E0B), fontSize: 19)),
        ],
      ),
    );
  }
}
