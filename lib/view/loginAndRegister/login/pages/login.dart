import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/loginCard.dart';
import 'package:FoodOrder/view/loginAndRegister/register/pages/register.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/horizontalLine.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/imageCard.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/loginRegisterButton.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/newUserOrNot.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/signWithGoogleButton.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCard(),
            LoginCard(),
            // LoginRegisterButton(
            //   input: LoginRegisterPageStrings().loginButton,
            // ),
            HorizontalLine(),
            SignWithGoogleButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LoginRegisterPageStrings().newUser,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                  ),
                ),
                FlatButton(
                  child: Text(
                    LoginRegisterPageStrings().register,
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
