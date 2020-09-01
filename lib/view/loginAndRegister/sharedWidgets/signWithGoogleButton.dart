import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class SignWithGoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical,
      ),
      child: GoogleSignInButton(
        onPressed: () {},
        darkMode: false,
      ),
    );
  }
}
