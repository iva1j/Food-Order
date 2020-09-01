import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/registerCard.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/horizontalLine.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/imageCard.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/loginRegisterButton.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/newUserOrNot.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/signWithGoogleButton.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/thickHorizontalLine.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCard(),
            RegisterCard(),
            LoginRegisterButton(
              input: LoginRegisterPageStrings().registerButton,
            ),
            HorizontalLine(),
            SignWithGoogleButton(),
            CheckIfNewUser(
              input1: LoginRegisterPageStrings().haveAnAccount,
              input2: LoginRegisterPageStrings().login,
            ),
            ThickHorizontalLine(),
          ],
        ),
      ),
    );
  }
}
