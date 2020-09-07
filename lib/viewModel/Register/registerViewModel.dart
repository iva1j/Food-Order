import 'dart:async';

import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/categoryChangeNotifier.dart';
import '../../providers/categoryChangeNotifier.dart';
import '../../utils/globalVariables.dart';

Future<bool> userExistingorNot(String email) async {
  final QuerySnapshot result = await Firestore.instance
      .collection('users')
      .where('email', isEqualTo: emailInputController.text)
      .limit(1)
      .getDocuments();
  final List<DocumentSnapshot> documents = result.documents;
  if (documents.length > 0) {
    allowUserToRegister = false;
    print("Hoce li pustiti Usera da se registruje: " +
        allowUserToRegister.toString());
  } else {
    print("Hoce li pustiti Usera da se registruje" +
        allowUserToRegister.toString());
    allowUserToRegister = true;
    print(allowUserToRegister);
  }
}

checkStatus(BuildContext context, String email) {
  FutureBuilder(
      future: userExistingorNot(email),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          allowUserToRegister = false;
          print('korisnik postoji');
          allowUserToRegister = false;
          return Container();
        } else {
          allowUserToRegister = true;
          print('korisnik nije u bazi');
          return Container();
        }
      });
}

Future onPressedRegButton(BuildContext context) async {
  FocusScope.of(context).unfocus();
  FocusScope.of(context).requestFocus(new FocusNode());
  await checkStatus(context, emailInputController.text);
  Timer(Duration(milliseconds: 500), () async {
    if (registerFormKey.currentState.validate()) {
      if (pwdInputController.text == confirmPwdInputController.text) {
        allowUserToRegister
            ? FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                    email: emailInputController.text,
                    password: pwdInputController.text)
                .then((authResult) => Firestore.instance
                    .collection("users")
                    .document(authResult.user.uid)
                    .setData({
                      "uid": authResult.user.uid,
                      "password": pwdInputController.text,
                      "email": emailInputController.text,
                    })
                    .then((result) async => {
                          /*
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ChangeNotifierProvider<CategoryChangeIndex>(
                                  child: ListOfFoods(uid: authResult.user.uid),
                                  create: (BuildContext context) =>
                                      CategoryChangeIndex(),
                                ),
                              ),
                              (_) => false),*/
                          userID = await getUserID(),
                          print('userIDDDDD: '),
                          print(userID),
                          await Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListOfFoods(),
                            ),
                          ),
                          emailInputController.clear(),
                          pwdInputController.clear(),
                          confirmPwdInputController.clear()
                        })
                    .catchError((err) => print(err)))
                .catchError((err) => print(err))
            : showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Error"),
                    content: Text("Email already in use"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Close"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                });

        // userID = await receiver[0]['uid'];
        // print('test: ' + userID);
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Error"),
                content: Text("The passwords do not match"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
      }
    }
    email = emailInputController.text;
  });
}

void removeFocusRegister(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    currentFocus.focusedChild.unfocus();
  }
}

Future getUserID() async {
  final QuerySnapshot qs = await Firestore.instance
      .collection('users')
      .where('email', isEqualTo: emailInputController.text)
      .getDocuments();

  final List<DocumentSnapshot> userRecords = qs.documents;
  // userID = userRecords[0]['uid'];
  // print('userID: ');
  // print(userID);
  return userRecords[0]['uid'];
}

// Future getOrders() async {
//   List<DocumentSnapshot> orderRecords = List<DocumentSnapshot>();

//   FutureBuilder(
//       future: Firestore.instance
//           .collection("users")
//           .document(userID)
//           .collection('userOrders')
//           .getDocuments(),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (snapshot.hasData) {
//           orderRecords = snapshot.data.documents;
//           print('userID svih korisnika:');
//           print(orderRecords[0]['orderID']);
//           orderList = orderRecords[0]['orderID'];
//           return null;
//         } else
//           userID = null;
//         return null;
//       });
// }

Future getOrders() async {
  final QuerySnapshot orders = await Firestore.instance
      .collection("users")
      .document(userID)
      .collection('userOrders')
      .getDocuments();
  List<DocumentSnapshot> favoritesDocs = orders.documents;
  // orderList.clear();
  // orderList = orders.documents;
  // print('list: ');
  // print(orderList[0]['orderID']);
  return orders.documents;
}
