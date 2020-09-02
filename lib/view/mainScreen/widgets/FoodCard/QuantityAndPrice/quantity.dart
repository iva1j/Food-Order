import 'package:FoodOrder/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  const Quantity({
    Key key,
    @required this.counter,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      counter.toString(),
      style: quantityStyle(),
    );
  }

}
