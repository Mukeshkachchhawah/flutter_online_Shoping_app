import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_text_application/home_pages/like.dart';
import 'package:flutter_text_application/home_pages/person.dart';
import 'package:flutter_text_application/home_pages/shoping.dart';
import 'package:flutter_text_application/screens/drawer.dart';

import '../home_pages/home.dart';
import '../home_pages/searching_page/search.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _myIndex = 0;
  final photos = <File>[];

  /// use camera
  // void openCamera() {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (_) => CameraCamera(
  //                 onFile: (file) {
  //                   photos.add(file);
  //                   Navigator.pop(context);
  //                   setState(() {});
  //                 },
  //               )));
  // }

  @override
  Widget build(BuildContext context) {
    final _pages = [HomePage(), search_Page(), Shoping(), Like(), Person()];
    return Scaffold(
      backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   title: Text("HomePages"),
      // ),

      bottomNavigationBar: BottomNavigationBar(
          //  showSelectedLabels: false,
          currentIndex: _myIndex,
          selectedItemColor: Colors.red[800],
          onTap: (index) {
            setState(() {
              _myIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 1, 8, 14),
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 1, 8, 14),
                icon: Icon(
                  Icons.search,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 1, 8, 14),
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: "shoping"),
            // BottomNavigationBarItem(
            //     //backgroundColor: Colors.blue,
            //     // activeIcon: FloatingActionButton(
            //     //   onPressed: () {

            //     //   },
            //     //   child: Icon(
            //     //     Icons.camera,
            //     //   ),
            //     // ),
            //     icon: IconButton(
            //         onPressed: () {
            //           openCamera();
            //         },
            //         icon: Icon(Icons.camera)),
            //     label: "Camera"),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 1, 8, 14),
                icon: Icon(
                  Icons.notifications,
                ),
                label: "Notification"),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 1, 8, 14),
                icon: Icon(
                  Icons.person,
                ),
                label: "Person"),
          ]),
      body: _pages[_myIndex],
    );
  }
}
