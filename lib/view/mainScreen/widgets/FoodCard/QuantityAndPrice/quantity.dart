import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/categoryChangeNotifier.dart';
import '../../../../../utils/globalVariables.dart';

class Quantity extends StatefulWidget {
  const Quantity({
    Key key,
    this.index,
    @required this.counter,
  }) : super(key: key);
  final int index;
  final int counter;

  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryChangeIndex>(context);
    return Text(
      categoryMeals[widget.index].counter.toString(),
      style: quantityStyle(),
    );
  }
}
