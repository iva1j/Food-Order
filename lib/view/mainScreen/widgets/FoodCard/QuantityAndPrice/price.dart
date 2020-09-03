import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/quantityAndPrice.dart';
import 'package:FoodOrder/viewModel/HomeScreen/listOfFood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Price extends StatefulWidget {
  const Price({
    Key key,
    @required this.price,
    @required this.widget,
    this.index,
  }) : super(key: key);

  final double price;
  final QuantityAndPrice widget;
  final int index;
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return Text(
      ListOfFoodViewModel().priceFormatterViewModel(widget.index),
      style: priceStyle(),
    );
  }
}
