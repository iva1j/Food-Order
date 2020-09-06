import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 9),
      child: Icon(
        Icons.shopping_cart,
        size: 20,
      ),
    );
  }
}
