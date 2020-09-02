import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/home.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/loginCard.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/horizontalLine.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/imageCard.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/loginRegisterButton.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/newUserOrNot.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/signWithGoogleButton.dart';
import 'package:FoodOrder/viewModel/signIn/signInViewModel.dart';
import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  String password;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void login() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      signin(email, password, context).then((value) {
        if (value != null) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCard(),
            //LoginCard(),
            // LoginRegisterButton(
            //   input: LoginRegisterPageStrings().loginButton,
            // ),
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 4,
              ),
              width: SizeConfig.blockSizeHorizontal * 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 15.0),
                        blurRadius: 15.0),
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, -10.0),
                        blurRadius: 10.0),
                  ]),
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
                    Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                ),
                              ),
                              onChanged: (val) {
                                email = val;
                              },
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
                              LoginRegisterPageStrings().password,
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
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                ),
                              ),
                              onChanged: (val) {
                                password = val;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 10,
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 3,
              ),
              width: SizeConfig.blockSizeHorizontal * 25,
              height: SizeConfig.blockSizeVertical * 5,
              child: RaisedButton(
                onPressed: login,
                color: raisedButtonColor,
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            HorizontalLine(),
            SignWithGoogleButton(),
            CheckIfNewUser(
              input1: LoginRegisterPageStrings().newUser,
              input2: LoginRegisterPageStrings().register,
            ),
          ],
        ),
      ),
    );
  }
}
