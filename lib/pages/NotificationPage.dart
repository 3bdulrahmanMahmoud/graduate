// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BackButton(),
                    Text(
                      'Notification',
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ]),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFBD79B),
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        'lsadk;jfpo;dkcjk;2kewipjkxeiwjkxdoihknehcxpiahpixpijk;naxpnkcdiink',
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
