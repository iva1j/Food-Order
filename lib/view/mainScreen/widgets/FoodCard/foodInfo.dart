import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/mainScreen/pages/dummy_data.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodName.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/quantityAndPrice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

List quantity = [];

class FoodInfo extends StatefulWidget {
  const FoodInfo({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _FoodInfoState createState() => _FoodInfoState();
}

class _FoodInfoState extends State<FoodInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 244, 248, 1),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      child: Container(
        margin: Margin().symmetric(1, 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FoodName(index: widget.index),
            Text(
              DUMMY_MEALS[widget.index].ingredients.toString().contains('[')
                  ? FoodElements().ingridients +
                      DUMMY_MEALS[widget.index]
                          .ingredients
                          .toString()
                          .replaceAll('[', '')
                          .replaceAll(']', '')
                  : 'Food details are not provided',
              style: TextStyle(
                color: Colors.black45,
                fontFamily: 'Roboto',
              ),
            ),
            QuantityAndPrice(index: widget.index)
          ],
        ),
      ),
    );
  }
}
