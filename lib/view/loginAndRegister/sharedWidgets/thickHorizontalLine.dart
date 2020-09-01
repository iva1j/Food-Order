import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class ThickHorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 3,
      ),
      width: SizeConfig.blockSizeHorizontal * 30,
      height: SizeConfig.blockSizeVertical,
      color: Colors.black.withOpacity(.6),
    );
  }
}
