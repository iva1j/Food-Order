import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../providers/categoryChangeNotifier.dart';
import '../../../../utils/globalVariables.dart';

class FoodName extends StatefulWidget {
  const FoodName({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;

  @override
  _FoodNameState createState() => _FoodNameState();
}

class _FoodNameState extends State<FoodName> {
  @override
  Widget build(BuildContext context) {
    return Text(
      categoryMeals[widget.index].title,
      style: foodNameStyle(),
    );
  }
}
