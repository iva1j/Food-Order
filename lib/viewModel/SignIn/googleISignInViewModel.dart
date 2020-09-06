import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

signOut() {
  googleSignIn.signOut();
}

Future<void> handleSignIn() async {
  GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken);

  AuthResult result = (await auth.signInWithCredential(credential));

  user = result.user;
}

void onPressedGoogleSignIn(BuildContext context) {
  handleSignIn().whenComplete(() => Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider<CategoryChangeIndex>(
              child: ListOfFoods(),
              create: (BuildContext context) => CategoryChangeIndex()))));
}
