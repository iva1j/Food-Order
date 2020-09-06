import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 3),
      child: Text(
        "Checkout",
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
  }
}
