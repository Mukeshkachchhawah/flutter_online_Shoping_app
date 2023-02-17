import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_text_application/provider/auth_provider.dart';
import 'package:flutter_text_application/utlis/utlis.dart';
import 'package:pinput/pinput.dart';

import '../home_pages/home.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

class Otp_Verify extends StatefulWidget {
  final String verificationId;
  const Otp_Verify({super.key, required this.verificationId});
  @override
  State<Otp_Verify> createState() => _Otp_VerifyState();
}

class _Otp_VerifyState extends State<Otp_Verify> {
  String? otpCode;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final _isLoading =
    //     Provider.of<AuthProvider>(context, listen: true).isLoading;

    return Scaffold(
      body: SafeArea(
        child:
            // _isLoading == false
            //     ? Center(
            //         child: CircularProgressIndicator(
            //           color: Color.fromARGB(255, 246, 0, 181),
            //         ),
            //       )
            //     :
            Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://freepngimg.com/thumb/logo/167774-logo-verification-free-png-hq.png',
                          width: 150,
                          height: 150,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "OTP Verification",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "We need to register your phone without getting started!",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Pinput(
                          length: 6,
                          defaultPinTheme: PinTheme(
                            width: 56,
                            height: 56,
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(30, 60, 87, 1),
                                fontWeight: FontWeight.w600),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(234, 239, 243, 1)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          showCursor: true,
                          onCompleted: (value) {
                            setState(() {
                              otpCode = value;
                            });
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => HomePage()),
                              // );
                              if (otpCode != null) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePages()),
                                );
                              } else {
                                ShowSnackBar(context, "Enter 6-Digit Code");
                              }
                            },
                            child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text(
                                  "Verify Phone Number",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ))),
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    'phone',
                                  );
                                },
                                child: Text(
                                  "Edit Phone Number ?",
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Didn't receive any code?",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Resend OTP",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void verifyOtp(BuildContext context, String userOtp) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    ap.veriftOtp(
        context: context,
        verificationId: widget.verificationId,
        usereOtp: userOtp,
        onSuccess: () {
          ap.checkExistingUser().then((value) async {
            if (value == true) {
              // user exists in our app
            } else {
              // add new user in app
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (route) => false);
            }
          });
        });
  }
}
