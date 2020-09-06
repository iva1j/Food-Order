import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodDecs.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodName.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/quantityAndPrice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodInfo extends StatefulWidget {
  const FoodInfo({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;

  @override
  _FoodInfoState createState() => _FoodInfoState();
}

class _FoodInfoState extends State<FoodInfo> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryChangeIndex>(context);

    return Container(
      decoration: foodInfoDecoration(),
      child: Container(
        margin: Margin().symmetric(1, 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FoodName(index: widget.index),
            FoodDesc(widget: widget, widget2: widget),
            QuantityAndPrice(index: widget.index)
          ],
        ),
      ),
    );
  }
}
