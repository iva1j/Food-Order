import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../providers/categoryChangeNotifier.dart';
import '../../../../utils/globalVariables.dart';

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
    ///This code will be normally factorized but since we will
    //////provide just 1 line of code (when real data API come), I left this code like this to minimaze doing unuseless job
    ///new output will be like this:
    ///return Text(categoryMeals[widget.index].foodDesc, style: foodInfoStyle());
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
