import 'package:FoodOrder/utils/Validation/Register/emailRegValidation.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({
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
