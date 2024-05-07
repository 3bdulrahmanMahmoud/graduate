// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: BackButton()),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Notification',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFBD79B),
                ),
                width: double.infinity,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'lsadk;jfpo;dkcjk;2kewipjkxeiwjkxdoihknehcxpiahpixpijk;naxpnkcdiink',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Text('Moments ago')
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
