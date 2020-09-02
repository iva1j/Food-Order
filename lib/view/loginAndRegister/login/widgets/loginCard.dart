import 'package:FoodOrder/utils/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginCard extends StatefulWidget {
  LoginCard({Key key}) : super(key: key);
  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;

  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
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
          key: _loginFormKey,
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
                  LoginRegisterPageStrings().login,
                  style: TextStyle(
                    fontSize: SizeConfig.safeBlockHorizontal * 6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 3,
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
                        height: SizeConfig.blockSizeVertical * 3,
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
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 3,
                          ),
                          width: SizeConfig.blockSizeHorizontal * 35,
                          height: SizeConfig.blockSizeVertical * 5,
                          child: RaisedButton(
                            child: Text(
                              LoginRegisterPageStrings().loginButton,
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
                              if (_loginFormKey.currentState.validate()) {
                                FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailInputController.text,
                                        password: pwdInputController.text)
                                    .then((authResult) => Firestore.instance
                                        .collection("users")
                                        .document(authResult.user.uid)
                                        .get()
                                        .then(
                                          (DocumentSnapshot result) =>
                                              Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ChangeNotifierProvider<
                                                      CategoryChangeIndex>(
                                                child: ListOfFoods(
                                                    uid: authResult.user.uid),
                                                create:
                                                    (BuildContext context) =>
                                                        CategoryChangeIndex(),
                                              ),
                                            ),
                                          ),
                                        )
                                        .catchError((err) => print(err)))
                                    .catchError((err) => print(err));
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
      ),
    );
  }
}
