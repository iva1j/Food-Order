import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'foodDetailsAlertDialog.dart';

class ProductDetailsImage extends StatefulWidget {
  const ProductDetailsImage({
    Key key,
    @required this.widget,
  }) : super(key: key);

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
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: Image.network(
          DUMMY_MEALS[widget.widget.index].imageUrl,
          height: SizeConfig.blockSizeVertical * 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
