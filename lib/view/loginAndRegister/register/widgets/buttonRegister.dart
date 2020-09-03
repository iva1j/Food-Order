import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/Validation/Register/emailRegValidation.dart';
import 'package:FoodOrder/utils/Validation/Register/passwordRegValidator.dart';
import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/loginAndRegister/register/widgets/registerCard.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:FoodOrder/viewModel/Register/registerViewModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:FoodOrder/utils/globalVariables.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key key,
    @required this.registerFormKey,
  }) : super(key: key);

  final GlobalKey<FormState> registerFormKey;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
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
        await onPressedRegButton(context);
      },
    );
  }
}
