import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_text_application/screens/singInPhone_auth.dart';

import 'homepage.dart';
import 'sin_in_emailp.dart';

class Splace_Screens extends StatefulWidget {
  const Splace_Screens({Key? key}) : super(key: key);

  @override
  State<Splace_Screens> createState() => _Splace_ScreensState();
}

class _Splace_ScreensState extends State<Splace_Screens> {
  /// auto next screens in splace screens in home page
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 5),
  //       () => Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => HomePages())));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 244, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Online Shoping\n User Account ",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => User_SingIn()));
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Sing In \nPhone Number",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AppSignIn()));
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 24, 57, 204),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Sing in \nEmail or Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
