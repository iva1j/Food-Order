import 'package:FoodOrder/utils/Validation/Register/passwordRegValidator.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
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
