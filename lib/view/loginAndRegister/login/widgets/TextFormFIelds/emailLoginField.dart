import 'package:FoodOrder/utils/Validation/SignIn/emailSignInVal.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class EmailLoginField extends StatelessWidget {
  const EmailLoginField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailInputController,
      keyboardType: TextInputType.emailAddress,
      validator: emailValidator,
    );
  }
}
