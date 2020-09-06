import 'package:FoodOrder/utils/Validation/Register/passwordRegValidator.dart';
import 'package:flutter/material.dart';
import 'package:FoodOrder/utils/globalVariables.dart';

class ConfirmPassField extends StatelessWidget {
  const ConfirmPassField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: confirmPwdInputController,
      obscureText: true,
      validator: pwdValidator,
    );
  }
}
