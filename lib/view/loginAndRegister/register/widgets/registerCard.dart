import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/TextFormFields/confirmpassField.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/TextFormFields/emailField.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/TextFormFields/passwordField.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/Texts/confirmPassText.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/Texts/emailText.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/Texts/passwordText.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/Texts/titleRegisterText.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/buttonRegister.dart';
import 'package:FoodOrder/viewModel/Register/registerViewModel.dart';
import 'package:flutter/material.dart';
import 'package:FoodOrder/utils/globalVariables.dart';

import '../../../../utils/sizeconfig.dart';

class RegisterCard extends StatefulWidget {
  RegisterCard({Key key}) : super(key: key);
  @override
  _RegisterCardState createState() => _RegisterCardState();
}

class _RegisterCardState extends State<RegisterCard> {
  @override
  initState() {
    registerInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        removeFocusRegister(context);
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
                    TextRegisterTitle(),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 2,
                    ),
                    TextEmail(),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal * 3,
                        vertical: 0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          EmailField(),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          TextPassword(),
                          PasswordField(),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          TextConfirmPass(),
                          ConfirmPassField(),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 6,
                          ),
                          RegisterButton(),
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
