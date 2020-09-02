import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'foodDetailsAlertDialog.dart';

class ProductDetailsTitle extends StatefulWidget {
  const ProductDetailsTitle({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final FoodDetailsAlertDialog widget;

  @override
  _ProductDetailsTitleState createState() => _ProductDetailsTitleState();
}

class _ProductDetailsTitleState extends State<ProductDetailsTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Margin().only(0, 0, 0, 3),
      child: Text(
        DUMMY_MEALS[widget.widget.index].title,
        style: productDetailsTitleStyle(),
      ),
    );
  }


}
