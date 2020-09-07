import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/TextFormFIelds/emailLoginField.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/TextFormFIelds/passwLoginField.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/Texts/emailLoginText.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/Texts/loginTitle.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/Texts/passwLoginText.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/buttonLogin.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatefulWidget {
  LoginCard({Key key}) : super(key: key);
  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  initState() {
    loginInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Form(
          key: loginFormKey,
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.blockSizeHorizontal * 5,
              right: SizeConfig.blockSizeHorizontal * 5,
              top: SizeConfig.blockSizeVertical * 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextLoginTitle(),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 3,
                ),
                TextLoginEmail(),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal * 3,
                    vertical: 0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      EmailLoginField(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      TextLoginPassword(),
                      PasswordLoginField(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 10,
                      ),
                      ButtonLogin(),
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
