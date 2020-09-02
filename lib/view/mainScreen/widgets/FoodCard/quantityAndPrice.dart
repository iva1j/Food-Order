import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/QuantityAndPrice/decreaseQuantityButton.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/QuantityAndPrice/increaseQuantityButton.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/QuantityAndPrice/price.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/QuantityAndPrice/quantity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class QuantityAndPrice extends StatefulWidget {
  const QuantityAndPrice({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _QuantityAndPriceState createState() => _QuantityAndPriceState();
}

class _QuantityAndPriceState extends State<QuantityAndPrice> {
  int counter = 0;
  double price = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Margin().only(2, 0, 2, 0),
      child: Row(
        children: [
          DecreaseQuantityButton(),
          Quantity(counter: counter),
          IncreaseQuantityButton(),
          Spacer(),
          Price(price: price, widget: widget)
        ],
      ),
    );
  }
}
