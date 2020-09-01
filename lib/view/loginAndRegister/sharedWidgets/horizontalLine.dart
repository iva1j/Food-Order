import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 2,
      ),
      width: SizeConfig.blockSizeHorizontal * 15,
      height: SizeConfig.blockSizeVertical * 0.2,
      color: Colors.black.withOpacity(.2),
    );
  }
}
