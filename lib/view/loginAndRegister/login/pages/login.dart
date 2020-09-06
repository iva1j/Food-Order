import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/bottomLoginText.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/loginCard.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/horizontalLine.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/imageCard.dart';
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
            HorizontalLine(),
            SignWithGoogleButton(),
            BottomLoginText()
          ],
        ),
      ),
    );
  }
}
