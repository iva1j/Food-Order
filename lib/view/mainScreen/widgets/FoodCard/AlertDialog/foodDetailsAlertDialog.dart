import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/AlertDialog/productDetailsContent.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/AlertDialog/productDetailsImage.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/AlertDialog/productDetailsTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDetailsAlertDialog extends StatefulWidget {
  const FoodDetailsAlertDialog({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;
  @override
  _FoodDetailsAlertDialogState createState() => _FoodDetailsAlertDialogState();
}

class _FoodDetailsAlertDialogState extends State<FoodDetailsAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ProductDetailsImage(
            widget: widget,
            index: widget.index,
          ),
          ProductDetailsTitle(
            widget: widget,
            index: widget.index,
          ),
          ProductDetailsContent(index: widget.index)
        ]),
      ),
      titlePadding: Margin().all(0),
      elevation: 0,
    );
  }
}
