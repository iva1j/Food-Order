import 'package:FoodOrder/viewModel/signIn/signInGoogleViewModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<FirebaseUser> signin(
    String email, String password, BuildContext context) async {
  try {
    AuthResult result =
        await auth.signInWithEmailAndPassword(email: email, password: email);
    FirebaseUser user = result.user;
    // return Future.value(true);
    return Future.value(user);
  } catch (e) {
    print(e);
  }
}
