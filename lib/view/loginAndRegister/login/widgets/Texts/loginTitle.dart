import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:flutter/material.dart';

class TextLoginTitle extends StatelessWidget {
  const TextLoginTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LoginRegisterPageStrings().login,
      style: TextStyle(
        fontSize: SizeConfig.safeBlockHorizontal * 6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
