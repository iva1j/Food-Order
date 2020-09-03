import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class ImageCart extends StatelessWidget {
  const ImageCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 5),
      child: Image.asset(
        "assets/images/milk.png",
        height: 50,
      ),
    );
  }
}
