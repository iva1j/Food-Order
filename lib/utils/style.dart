import 'package:FoodOrder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Providers/categoryChangeNotifier.dart';

TextStyle productDetailsTitleStyle() {
  return TextStyle(
    color: color2,
    fontFamily: 'Roboto',
    fontSize: 22,
  );
}

TextStyle productDetailsContentStyle() {
  return TextStyle(
    color: Colors.black45,
    fontSize: 16,
    fontFamily: 'Roboto',
  );
}

TextStyle categoryFocusStyle(int index, CategoryChangeIndex provider) {
  return TextStyle(
    color: index == provider.currentIndex ? Colors.white : Colors.black45,
    fontFamily: 'Roboto',
  );
}

BoxDecoration categoryUnFocusDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(36)),
  );
}

BoxDecoration categoryFocusDecoration() {
  return BoxDecoration(
    color: Color.fromRGBO(255, 179, 102, 1.0),
    borderRadius: BorderRadius.all(Radius.circular(36)),
  );
}

BoxDecoration categoryCardDecoration() {
  return BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(1.0, 0.7), //(x,y)
        blurRadius: 5.0,
      ),
    ],
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
  );
}
