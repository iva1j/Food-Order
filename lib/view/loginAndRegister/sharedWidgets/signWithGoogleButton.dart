import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/viewModel/SignIn/googleISignInViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class SignWithGoogleButton extends StatefulWidget {
  @override
  _SignWithGoogleButtonState createState() => _SignWithGoogleButtonState();
}

class _SignWithGoogleButtonState extends State<SignWithGoogleButton> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical,
      ),
      child: GoogleSignInButton(
        onPressed: () {
          onPressedGoogleSignIn(context);
        },
        darkMode: false,
      ),
    );
  }
}
