import 'package:FoodOrder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:FoodOrder/providers/categoryChangeNotifier.dart';

//# TODO: refactore whole style based on their parent files
TextStyle productDetailsTitleStyle() {
  return TextStyle(
    color: orange,
    fontFamily: 'Roboto',
    fontSize: 22,
  );
}

TextStyle productDetailsContentStyle() {
  return TextStyle(
    color: Colors.black38,
    fontSize: 14,
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

BoxDecoration foodInfoDecoration() {
  return BoxDecoration(
    color: Color.fromRGBO(240, 244, 248, 1),
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
  );
}

TextStyle foodInfoStyle() {
  return TextStyle(
    color: Colors.black45,
    fontFamily: 'Roboto',
  );
}

TextStyle decreaseQuantityButtonStyle() {
  return TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 22,
    color: Colors.black38,
  );
}

TextStyle increaseQuantityButtonStyle() {
  return TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 22,
    color: Colors.black38,
  );
}

TextStyle quantityStyle() {
  return TextStyle(
    fontSize: 20,
    color: Colors.black38,
  );
}

TextStyle priceStyle() => TextStyle(color: Colors.black38, fontSize: 20);
TextStyle appBarStyle() {
  return TextStyle(
    color: darkblue,
    fontFamily: 'Roboto',
  );
}

TextStyle foodNameStyle() {
  return TextStyle(
      color: Colors.black54,
      fontFamily: 'Roboto',
      fontSize: 22,
      fontWeight: FontWeight.w500);
}
