import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FoodDesc extends StatelessWidget {
  const FoodDesc({
    Key key,
    @required this.widget,
    @required this.widget2,
  }) : super(key: key);

  final FoodInfo widget;
  final FoodInfo widget2;

  @override
  Widget build(BuildContext context) {
    return Text(
      categoryMeals[widget.index].ingredients.toString().contains('[')
          ? FoodElements().ingridients +
              categoryMeals[widget.index]
                  .ingredients
                  .toString()
                  .replaceAll('[', '')
                  .replaceAll(']', '')
          : 'Food details are not provided',
      style: foodInfoStyle(),
    );
  }
}
