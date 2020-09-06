import 'package:FoodOrder/utils/Validation/SignIn/passSignInVal.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class PasswordLoginField extends StatelessWidget {
  const PasswordLoginField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: pwdInputController,
      obscureText: true,
      validator: pwdValidator,
    );
  }
}
