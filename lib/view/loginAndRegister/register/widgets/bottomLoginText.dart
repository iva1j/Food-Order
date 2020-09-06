import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/login.dart';
import 'package:flutter/material.dart';

class BottomRegisterText extends StatelessWidget {
  const BottomRegisterText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LoginRegisterPageStrings().haveAnAccount,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: SizeConfig.safeBlockHorizontal * 3.5,
          ),
        ),
        FlatButton(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
      ],
    );
  }
}
