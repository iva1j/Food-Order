import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsContent extends StatelessWidget {
  const ProductDetailsContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Margin().symmetric(3, 3),
      child: Text(
        Names().lorem,
        style: productDetailsContentStyle(),
      ),
    );
  }
}
