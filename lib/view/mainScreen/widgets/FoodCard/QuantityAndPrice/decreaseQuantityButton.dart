import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DecreaseQuantityButton extends StatelessWidget {
  const DecreaseQuantityButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      height: 35,
      child: FlatButton(
        padding: Margin().all(0),
        onPressed: () {
          //# TODO: Implement function for decreasing quantity of the food and change the price acording to that amount
        },
        child: Text(
          Names().decrease,
          style: decreaseQuantityButtonStyle(),
        ),
      ),
    );
  }
}
