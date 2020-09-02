import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'foodDetailsAlertDialog.dart';

class ProductDetailsImage extends StatefulWidget {
  const ProductDetailsImage({
    Key key,
    @required this.widget,
    this.index,
  }) : super(key: key);
  final int index;
  final FoodDetailsAlertDialog widget;

  @override
  _ProductDetailsImageState createState() => _ProductDetailsImageState();
}

class _ProductDetailsImageState extends State<ProductDetailsImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        child: Image.network(
          categoryMeals[widget.index].imageUrl,
          height: SizeConfig.blockSizeVertical * 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
