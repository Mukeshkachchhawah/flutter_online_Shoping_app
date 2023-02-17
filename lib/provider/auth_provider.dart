import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_application/screens/otp_verify.dart';
import 'package:flutter_text_application/utlis/utlis.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthProvider extends ChangeNotifier {
  bool _isSignedIn = false;
  bool get isSigendIn => isSigendIn;

  /// otp varify
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _uid;
  String get uid => _uid!;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  AuthProvider() {
    CheckSign();
  }
  void CheckSign() async {
    // ignore: non_constant_identifier_names
    final SharedPreferences s = await SharedPreferences.getInstance();
    // final SharedPreferences s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool("is_signedin") ?? false;
    notifyListeners();
  }

  /// sing in phone
  Future<void> signInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
          await _firebaseAuth.signInWithCredential(phoneAuthCredential);
        },
        verificationFailed: (error) {
          throw Exception(error.message);
        },
        codeSent: (verificationId, forceResendingToken) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Otp_Verify(verificationId: verificationId)));
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      ShowSnackBar(context, e.message.toString());
    }
  }

  // static of(BuildContext context, {required bool listen}) {}

  /// sing in otp verify
  void veriftOtp({
    required BuildContext context,
    required String verificationId,
    required String usereOtp,
    required Function onSuccess,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: usereOtp);
      User? user = (await _firebaseAuth.signInWithCredential(credential)).user;
      _uid = user?.uid;
      if (user != null) {
        onSuccess();
      }
    } on FirebaseAuthException catch (e) {
      ShowSnackBar(context, e.message.toString());
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> checkExistingUser() async {
    DocumentSnapshot snapshot =
        await _firebaseFirestore.collection("Users").doc(_uid).get();
    if (snapshot.exists) {
      print("User Exists");
      return true;
    } else {
      print("New User");
      return false;
    }
  }
}
