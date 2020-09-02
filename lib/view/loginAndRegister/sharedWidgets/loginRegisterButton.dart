import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class LoginRegisterButton extends StatelessWidget {
  final String input;

  const LoginRegisterButton({this.input});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 3,
      ),
      width: SizeConfig.blockSizeHorizontal * 35,
      height: SizeConfig.blockSizeVertical * 5,
      child: RaisedButton(
        onPressed: () {},
        color: raisedButtonColor,
        child: Text(
          input,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
