import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/Validation/Register/emailRegValidation.dart';
import 'package:FoodOrder/utils/Validation/Register/passwordRegValidator.dart';
import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var allowUserToRegister = false;

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

  @override
  Widget build(BuildContext context) {
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

    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: Container(
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
                                onPressed: () async {
                                  FocusScope.of(context).unfocus();
                                  FocusScope.of(context)
                                      .requestFocus(new FocusNode());
                                  await checkStatus(
                                      context, emailInputController.text);

                                  if (registerFormKey.currentState.validate()) {
                                    if (pwdInputController.text ==
                                        confirmPwdInputController.text) {
                                      allowUserToRegister
                                          ? FirebaseAuth.instance
                                              .createUserWithEmailAndPassword(
                                                  email:
                                                      emailInputController.text,
                                                  password:
                                                      pwdInputController.text)
                                              .then((authResult) => Firestore
                                                  .instance
                                                  .collection("users")
                                                  .document(authResult.user.uid)
                                                  .setData({
                                                    "uid": authResult.user.uid,
                                                    "password":
                                                        pwdInputController.text,
                                                    "email":
                                                        emailInputController
                                                            .text,
                                                  })
                                                  .then((result) => {
                                                        Navigator
                                                            .pushAndRemoveUntil(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      ChangeNotifierProvider<
                                                                          CategoryChangeIndex>(
                                                                    child: ListOfFoods(
                                                                        uid: authResult
                                                                            .user
                                                                            .uid),
                                                                    create: (BuildContext
                                                                            context) =>
                                                                        CategoryChangeIndex(),
                                                                  ),
                                                                ),
                                                                (_) => false),
                                                        emailInputController
                                                            .clear(),
                                                        pwdInputController
                                                            .clear(),
                                                        confirmPwdInputController
                                                            .clear()
                                                      })
                                                  .catchError(
                                                      (err) => print(err)))
                                              .catchError((err) => print(err))
                                          : showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Text("Error"),
                                                  content: Text(
                                                      "Email already in use"),
                                                  actions: <Widget>[
                                                    FlatButton(
                                                      child: Text("Close"),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    )
                                                  ],
                                                );
                                              });
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
          )),
    );
  }
}
