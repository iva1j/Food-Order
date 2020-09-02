import 'package:FoodOrder/view/mainScreen/pages/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FoodName extends StatefulWidget {
  const FoodName({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _FoodNameState createState() => _FoodNameState();
}

class _FoodNameState extends State<FoodName> {
  @override
  Widget build(BuildContext context) {
    return Text(
      DUMMY_MEALS[widget.index].title,
      style: TextStyle(
          color: Colors.black54,
          fontFamily: 'Roboto',
          fontSize: 22,
          fontWeight: FontWeight.w500),
    );
  }
}
