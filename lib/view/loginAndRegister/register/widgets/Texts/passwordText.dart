import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:flutter/material.dart';

class TextPassword extends StatelessWidget {
  const TextPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockSizeHorizontal * 3,
        vertical: 0,
      ),
      child: Text(
        LoginRegisterPageStrings().password,
        style: TextStyle(
          fontSize: SizeConfig.safeBlockHorizontal * 3,
          color: Colors.grey,
        ),
      ),
    );
  }
}
