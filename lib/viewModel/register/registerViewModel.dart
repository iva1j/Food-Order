import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/home.dart';
import 'package:FoodOrder/viewModel/signIn/signInGoogleViewModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<FirebaseUser> signUp(
    String email, String password, BuildContext context) async {
  try {
    AuthResult result = await auth.createUserWithEmailAndPassword(
        email: email, password: email);
    FirebaseUser user = result.user;
    return Future.value(user);
    // return Future.value(true);
  } catch (error) {
    print(error);
  }
}
