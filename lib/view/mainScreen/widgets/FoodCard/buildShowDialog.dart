import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AlertDialog/foodDetailsAlertDialog.dart';

Future buildShowDialog(BuildContext context, int index) {
  return showDialog(
      context: context,
      builder: (context) {
        return FoodDetailsAlertDialog(index: index);
      });
}
