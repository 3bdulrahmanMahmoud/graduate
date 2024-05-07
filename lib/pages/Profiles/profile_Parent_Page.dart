import 'package:flutter/material.dart';
import 'package:incubtor/widgets/Profile_Filed.dart';

class ProfileParentPage extends StatelessWidget {
  const ProfileParentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'asset/images/photo_2023-11-06_22-48-31 2.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.fitHeight,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'incubator',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Column(
                children: [
                  GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, 'editProfilePage'),
                      child: ProfileFiled(
                          image: 'asset/images/user.png',
                          text: 'Edit Profile')),
                  SizedBox(
                    height: 5,
                  ),
                  line,
                  SizedBox(
                    height: 5,
                  ),
                  ProfileFiled(image: 'asset/images/Chat.png', text: 'Support'),
                  SizedBox(
                    height: 5,
                  ),
                  line,
                  SizedBox(
                    height: 5,
                  ),
                  ProfileFiled(
                      image:
                          'asset/images/7503212_notification_bell_alert_icon 1.png',
                      text: 'Notifications'),
                  SizedBox(
                    height: 5,
                  ),
                  line,
                  SizedBox(
                    height: 5,
                  ),
                  ProfileFiled(
                      image: 'asset/images/material-symbols_language.png',
                      text: 'Setting'),
                  SizedBox(
                    height: 5,
                  ),
                  line,
                  SizedBox(
                    height: 5,
                  ),
                  ProfileFiled(
                      image:
                          'asset/images/2676937_exit_leave_logout_signout_icon 1.png',
                      text: 'Exite'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget line = Container(
  height: 1,
  color: Colors.red,
);
