import 'package:FoodOrder/utils/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/home.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/login.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterCard extends StatefulWidget {
  RegisterCard({Key key}) : super(key: key);
  @override
  _RegisterCardState createState() => _RegisterCardState();
}

class _RegisterCardState extends State<RegisterCard> {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  TextEditingController confirmPwdInputController;
  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    confirmPwdInputController = new TextEditingController();
    super.initState();
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.length == null || value == '') return 'Field cannot be empty';
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: registerFormKey,
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 5,
                right: SizeConfig.blockSizeHorizontal * 5,
                top: SizeConfig.blockSizeVertical * 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    LoginRegisterPageStrings().register,
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 2,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 3,
                      vertical: 0,
                    ),
                    child: Text(
                      LoginRegisterPageStrings().email,
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 3,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 3,
                      vertical: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          controller: emailInputController,
                          keyboardType: TextInputType.emailAddress,
                          validator: emailValidator,
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockSizeHorizontal * 3,
                            vertical: 0,
                          ),
                          child: Text(
                            LoginRegisterPageStrings().password,
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 3,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: pwdInputController,
                          obscureText: true,
                          validator: pwdValidator,
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockSizeHorizontal * 3,
                            vertical: 0,
                          ),
                          child: Text(
                            LoginRegisterPageStrings().confirmPassword,
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 3,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: confirmPwdInputController,
                          obscureText: true,
                          validator: pwdValidator,
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 3,
                            ),
                            width: SizeConfig.blockSizeHorizontal * 35,
                            height: SizeConfig.blockSizeVertical * 5,
                            child: RaisedButton(
                              child: Text(
                                LoginRegisterPageStrings().registerButton,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              color: blue,
                              onPressed: () {
                                if (registerFormKey.currentState.validate()) {
                                  if (pwdInputController.text ==
                                      confirmPwdInputController.text) {
                                    FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                            email: emailInputController.text,
                                            password: pwdInputController.text)
                                        .then((authResult) => Firestore.instance
                                            .collection("users")
                                            .document(authResult.user.uid)
                                            .setData({
                                              "uid": authResult.user.uid,
                                              "password":
                                                  pwdInputController.text,
                                              "email":
                                                  emailInputController.text,
                                            })
                                            .then((result) => {
                                                  Navigator.pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ChangeNotifierProvider<
                                                                CategoryChangeIndex>(
                                                          child: ListOfFoods(
                                                              uid: authResult
                                                                  .user.uid),
                                                          create: (BuildContext
                                                                  context) =>
                                                              CategoryChangeIndex(),
                                                        ),
                                                      ),
                                                      (_) => false),
                                                  emailInputController.clear(),
                                                  pwdInputController.clear(),
                                                  confirmPwdInputController
                                                      .clear()
                                                })
                                            .catchError((err) => print(err)))
                                        .catchError((err) => print(err));
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text("Error"),
                                            content: Text(
                                                "The passwords do not match"),
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
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

// return Container(
//   margin: EdgeInsets.only(
//     top: SizeConfig.blockSizeVertical * 4,
//   ),
//   width: SizeConfig.blockSizeHorizontal * 90,
//   decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(10.0),
//       boxShadow: [
//         BoxShadow(
//             color: Colors.black12,
//             offset: Offset(0.0, 15.0),
//             blurRadius: 15.0),
//         BoxShadow(
//             color: Colors.black12,
//             offset: Offset(0.0, -10.0),
//             blurRadius: 10.0),
//       ]),
//   child: Padding(
//     padding: EdgeInsets.only(
//       left: SizeConfig.blockSizeHorizontal * 5,
//       right: SizeConfig.blockSizeHorizontal * 5,
//       top: SizeConfig.blockSizeVertical * 3,
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           LoginRegisterPageStrings().register,
//           style: TextStyle(
//             fontSize: SizeConfig.safeBlockHorizontal * 6,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(
//           height: SizeConfig.blockSizeVertical * 2,
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(
//             horizontal: SizeConfig.blockSizeHorizontal * 3,
//             vertical: 0,
//           ),
//           child: Text(
//             LoginRegisterPageStrings().email,
//             style: TextStyle(
//               fontSize: SizeConfig.safeBlockHorizontal * 3,
//               color: Colors.grey,
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(
//             horizontal: SizeConfig.blockSizeHorizontal * 3,
//             vertical: 0,
//           ),
//           child: TextField(
//             decoration: InputDecoration(
//               enabledBorder: new UnderlineInputBorder(
//                 borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1.0,
//                     style: BorderStyle.solid),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: SizeConfig.blockSizeVertical * 2,
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(
//             horizontal: SizeConfig.blockSizeHorizontal * 3,
//             vertical: 0,
//           ),
//           child: Text(
//             LoginRegisterPageStrings().password,
//             style: TextStyle(
//               fontSize: SizeConfig.safeBlockHorizontal * 3,
//               color: Colors.grey,
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(
//             horizontal: SizeConfig.blockSizeHorizontal * 3,
//             vertical: 0,
//           ),
//           child: TextFormField(
//             obscureText: true,
//             decoration: InputDecoration(
//               enabledBorder: new UnderlineInputBorder(
//                 borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1.0,
//                     style: BorderStyle.solid),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: SizeConfig.blockSizeVertical * 2,
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(
//             horizontal: SizeConfig.blockSizeHorizontal * 3,
//             vertical: 0,
//           ),
//           child: Text(
//             LoginRegisterPageStrings().confirmPassword,
//             style: TextStyle(
//               fontSize: SizeConfig.safeBlockHorizontal * 3,
//               color: Colors.grey,
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(
//             horizontal: SizeConfig.blockSizeHorizontal * 3,
//             vertical: 0,
//           ),
//           child: TextFormField(
//             obscureText: true,
//             decoration: InputDecoration(
//               enabledBorder: new UnderlineInputBorder(
//                 borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1.0,
//                     style: BorderStyle.solid),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: SizeConfig.blockSizeVertical * 2,
//         ),
//       ],
//     ),
//   ),
// );
