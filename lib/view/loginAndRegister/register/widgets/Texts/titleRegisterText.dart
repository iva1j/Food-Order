import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:flutter/material.dart';

class TextRegisterTitle extends StatelessWidget {
  const TextRegisterTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LoginRegisterPageStrings().register,
      style: TextStyle(
        fontSize: SizeConfig.safeBlockHorizontal * 6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
