import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class TitleCart extends StatelessWidget {
  const TitleCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 5),
        child:
            Text('Milk', style: TextStyle(color: Colors.grey, fontSize: 20)));
  }
}
