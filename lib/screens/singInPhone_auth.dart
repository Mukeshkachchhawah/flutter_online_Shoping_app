import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_text_application/provider/auth_provider.dart';
import 'package:flutter_text_application/screens/otp_verify.dart';
import 'package:otp/otp.dart';
import 'package:country_picker/country_picker.dart';
import 'package:provider/provider.dart';

class User_SingIn extends StatefulWidget {
  const User_SingIn({Key? key}) : super(key: key);

  @override
  State<User_SingIn> createState() => _User_SingInState();
}

class _User_SingInState extends State<User_SingIn> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  Country selectedCountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: " ");

  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationIDReceived = " ";
  bool otpCodeVisible = false;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   phoneController.text = "+91";
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // phone controller
    phoneController.selection = TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length));
    return Scaffold(
      appBar: AppBar(
        title: Text("User Sing In Phone Auth"),
      ),
      // body:
      // Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(20),
      //     child: Column(
      //       children: [
      //         TextField(
      //           keyboardType: TextInputType.phone,
      //           controller: phoneController,
      //           decoration: InputDecoration(
      //               labelText: "Enter your 10 digit mobile number"),
      //         ),
      //         SizedBox(
      //           height: 30,
      //         ),
      //         // Visibility(
      //         //   visible: otpCodeVisible,
      //         //   child: TextField(
      //         //     controller: otpController,
      //         //     decoration: InputDecoration(labelText: "Phone"),
      //         //   ),
      //         // ),
      //         SizedBox(
      //           height: 30,
      //         ),
      //         ElevatedButton(
      //             onPressed: () {
      //               if (otpCodeVisible) {
      //                 verifyCode();
      //               } else {
      //                 veryfNumber();
      //               }
      //             },
      //             child: Text(otpCodeVisible ? "Login" : "Veryf"))
      //       ],
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.iconscout.com/icon/premium/png-256-thumb/hiring-employee-2753821-2286664.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Phone Verification",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "We need to register your phone before \n                    getting started !",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  fontFamily: "fallback"),
            )),
            SizedBox(
              height: 20,
            ),
            //   textfilewidget(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  onChanged: (value) {
                    setState(() {
                      phoneController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)),
                      labelText: "Phone Number",
                      hintText: "Enter your 10 digit mobile number",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 8, left: 10),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              showCountryPicker(
                                  // Country List in haff
                                  countryListTheme: CountryListThemeData(
                                      bottomSheetHeight: 500),
                                  context: context,
                                  onSelect: (value) {
                                    setState(() {
                                      selectedCountry = value;
                                    });
                                  });
                            },
                            child: Text(
                              "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      suffixIcon: phoneController.text.length > 9
                          ? Container(
                              height: 30,
                              width: 30,
                              margin: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.green),
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 20,
                              ),
                            )
                          : null)),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: otpCodeVisible,
              child: TextField(
                controller: otpController,
                decoration: InputDecoration(labelText: "Phone"),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  //   veryfNumber();
                  sendPhoneNumber();
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 4, 18, 71),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Send OTP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    ap.signInWithPhone(context, "+${selectedCountry.phoneCode}$phoneNumber");
  }
}
