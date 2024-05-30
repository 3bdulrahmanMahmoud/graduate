import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:incubtor/constant/constant_File.dart';
import 'package:incubtor/pages/Incubator/incubtPage.dart';
import 'package:incubtor/widgets/Add_And_delete_case_button.dart';
import 'package:incubtor/widgets/profile_TextFiled.dart';

class PersonalProfile extends StatefulWidget {
  const PersonalProfile({super.key});

  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  File? image;
  final imagePicker = ImagePicker();

  Future uploadImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Sizebox,
              const Row(
                children: [
                  BackButton(),
                ],
              ),
              Sizebox,
              const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Sizebox,
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: image == null
                        ? IconButton(
                            icon: Image.asset(
                              'asset/images/profileImage.png',
                              fit: BoxFit.contain,
                            ),
                            onPressed: () {
                              uploadImage();
                            },
                          )
                        : Image.file(
                            image!,
                            fit: BoxFit.cover,
                          )

                    //
                    ),
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  children: [
                    Sizebox,
                    ProfileTextFiled(
                      text: 'Name',
                    ),
                    Sizebox,
                    ProfileTextFiled(
                      text: "Surname",
                    ),
                    Sizebox,
                    ProfileTextFiled(
                      text: 'User Name',
                    ),
                    Sizebox,
                    ProfileTextFiled(
                      text: 'Passowrd',
                    ),
                    Sizebox,
                    ProfileTextFiled(
                      text: 'Email Adress',
                    ),
                    Sizebox,
                    ProfileTextFiled(
                      text: 'Mobile Number',
                    ),
                  ],
                ),
              ),
              Sizebox,
              SizedBox(
                width: 300,
                child: CaseButton(
                    color: color_buttons,
                    textcase: 'Save',
                    TextColor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
