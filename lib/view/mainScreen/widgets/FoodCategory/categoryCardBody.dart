import 'package:FoodOrder/utils/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCategory/productCategoryTitle.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryCardBody extends StatefulWidget {
  const CategoryCardBody({
    Key key,
    @required this.provider,
    this.index,
  }) : super(key: key);
  final int index;
  final CategoryChangeIndex provider;

  @override
  _CategoryCardBodyState createState() => _CategoryCardBodyState();
}

class _CategoryCardBodyState extends State<CategoryCardBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.provider.currentIndex = widget.index;
      },
      child: Center(
        child: Padding(
          padding: Margin().symmetric(0, 5),
          child: Container(
            height: 55,
            width: 95,
            child: Center(
              child: ProductCategoryTitle(
                  provider: widget.provider, index: widget.index),
            ),
            decoration: widget.index == widget.provider.currentIndex
                ? categoryFocusDecoration()
                : categoryUnFocusDecoration(),
          ),
        ),
      ),
    );
  }
}
