import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_text_application/usesr_profile/sing_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

import '../usesr_profile/proifle_update.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  File? file;
  ImagePicker image = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 8, 14),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Setting"),
        backgroundColor: Color.fromARGB(255, 1, 8, 14),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: GestureDetector(
                onTap: () {
                  getcamera();
                },
                child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: file == null
                        ? Icon(
                            Icons.image,
                            size: 50,
                          )
                        : Image.file(
                            file!,
                            fit: BoxFit.fill,
                          )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ActionChip(
                label: Text(
                  "Edit",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  getgallery();
                },
                avatar: Icon(Icons.edit),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SettingsGroup(items: [
              SettingsItem(
                icons: Icons.person,
                title: "User Account",
                subtitle: "Profile Details",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => User_Profile()));
                },
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
              SettingsItem(
                icons: Icons.security,
                title: "Sing in & security",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sing_in()));
                },
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
              SettingsItem(
                icons: Icons.notifications,
                title: "Notification",
                onTap: () {},
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
              SettingsItem(
                icons: Icons.note_alt_outlined,
                title: "About",
                onTap: () {},
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
              SettingsItem(
                icons: Icons.color_lens,
                title: "Theme",
                onTap: () {},
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
              SettingsItem(
                icons: Icons.person,
                title: "Add Account",
                onTap: () {},
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
              SettingsItem(
                icons: Icons.help,
                title: "Help",
                onTap: () {},
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
            ]),
            SettingsGroup(settingsGroupTitle: "  Accounts", items: [
              SettingsItem(
                icons: Icons.logout,
                title: "Sing Out",
                onTap: () {},
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
              SettingsItem(
                icons: Icons.repeat,
                title: "Add User Email",
                onTap: () {},
                iconStyle: IconStyle(
                    iconsColor: Colors.blue,
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
              SettingsItem(
                icons: Icons.delete,
                title: "Delet Account",
                titleStyle:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                onTap: () {},
                iconStyle: IconStyle(
                    iconsColor: Color.fromARGB(255, 241, 0, 0),
                    withBackground: true,
                    backgroundColor: Colors.white),
              ),
            ])
          ],
        ),
      ),
    );
  }

  getgallery() async {
    var images = await image.getImage(source: ImageSource.gallery);
    setState(() {
      file = File(images!.path);
    });
  }

  getcamera() async {
    var images = await image.getImage(source: ImageSource.camera);
    setState(() {
      file = File(images!.path);
    });
  }
}
