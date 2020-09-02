import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'foodDetailsAlertDialog.dart';

class ProductDetailsTitle extends StatefulWidget {
  const ProductDetailsTitle({
    Key key,
    @required this.widget,
    this.index,
  }) : super(key: key);

  final FoodDetailsAlertDialog widget;
  final int index;
  @override
  _ProductDetailsTitleState createState() => _ProductDetailsTitleState();
}

class _ProductDetailsTitleState extends State<ProductDetailsTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Margin().only(3, 0, 0, 3),
      child: Text(
          categoryMeals[widget.index].title,
        style: productDetailsTitleStyle(),
      ),
    );
  }
}
