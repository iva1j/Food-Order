import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

var hasActiveConnection = false;
var allowUserToRegister = false;
var status = false;
bool inCart = false;
var currentTab = 0;

final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

TextEditingController emailInputController;
TextEditingController pwdInputController;
TextEditingController confirmPwdInputController;

registerInit() {
  emailInputController = new TextEditingController();
  pwdInputController = new TextEditingController();
  confirmPwdInputController = new TextEditingController();
}

loginInit() {
  emailInputController = new TextEditingController();
  pwdInputController = new TextEditingController();
}

//google sign in
GoogleSignIn googleSignIn = new GoogleSignIn();
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseUser user;

//order page
List<DocumentSnapshot> orderList = List<DocumentSnapshot>();

String email;
String userID;
var receiver;
