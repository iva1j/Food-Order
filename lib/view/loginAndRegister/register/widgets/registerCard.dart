import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/Validation/Register/emailRegValidation.dart';
import 'package:FoodOrder/utils/Validation/Register/passwordRegValidator.dart';
import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/buttonRegister.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:FoodOrder/viewModel/Register/registerViewModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:FoodOrder/utils/globalVariables.dart';

var allowUserToRegister = false;

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
                              child: RegisterButton(
                                  registerFormKey: registerFormKey),
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
