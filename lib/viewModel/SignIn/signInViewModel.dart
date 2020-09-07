import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:FoodOrder/viewModel/Register/registerViewModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<bool> isUserRegistered() async {
  final QuerySnapshot result = await Firestore.instance
      .collection('users')
      .where('email', isEqualTo: emailInputController.text)
      .where('password', isEqualTo: pwdInputController.text)
      .limit(1)
      .getDocuments();
  final List<DocumentSnapshot> dokument = result.documents;
  if (dokument.length > 0) {
    status = true;
    print("Trenutni status (print od SignIn-a):" + status.toString());
  } else {
    status = false;
    print("Trenutni status(print od SignIn-a):" + status.toString());
  }
}

Future onPressedButtonLogin(BuildContext context) async {
  await isUserRegistered();

  if (loginFormKey.currentState.validate() && status == true) {
    userID = await getUserID();
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailInputController.text, password: pwdInputController.text)
        .then((authResult) => Firestore.instance
            .collection("users")
            .document(authResult.user.uid)
            .get()
            .then(
              (DocumentSnapshot result) =>
                  /*Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChangeNotifierProvider<CategoryChangeIndex>(
                    child: ListOfFoods(uid: authResult.user.uid),
                    create: (BuildContext context) => CategoryChangeIndex(),
                  ),
                ),
              ),*/
                  Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ListOfFoods(),
                ),
              ),
            )
            .catchError((err) => print(err)))
        .catchError((err) => print(err));
  }
}
