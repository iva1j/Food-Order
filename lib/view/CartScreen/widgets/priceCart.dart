import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class PriceCart extends StatelessWidget {
  const PriceCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: SizeConfig.blockSizeHorizontal * 20,
          bottom: SizeConfig.blockSizeVertical * 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "12.7 €",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
