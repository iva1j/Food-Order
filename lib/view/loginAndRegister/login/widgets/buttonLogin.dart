import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/viewModel/SignIn/signInViewModel.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 3,
        ),
        width: SizeConfig.blockSizeHorizontal * 35,
        height: SizeConfig.blockSizeVertical * 5,
        child: RaisedButton(
          child: Text(
            LoginRegisterPageStrings().loginButton,
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
            await onPressedButtonLogin(context);
          },
        ),
      ),
    );
  }
}
