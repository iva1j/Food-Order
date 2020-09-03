import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProductCategoryTitle extends StatefulWidget {
  const ProductCategoryTitle({Key key, @required this.provider, this.index})
      : super(key: key);
  final int index;
  final CategoryChangeIndex provider;

  @override
  _ProductCategoryTitleState createState() => _ProductCategoryTitleState();
}

class _ProductCategoryTitleState extends State<ProductCategoryTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      DUMMY_CATEGORIES[widget.index].title,textAlign: TextAlign.center,
      style: categoryFocusStyle(widget.index, widget.provider),
    );
  }
}
