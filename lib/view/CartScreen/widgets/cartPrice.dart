import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class CartPriceContainer extends StatelessWidget {
  const CartPriceContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 45,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 14),
            child: Text("Total:",
                style: TextStyle(color: Colors.grey, fontSize: 20)),
          ),
          Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 50),
            child: Text("15 €",
                style: TextStyle(color: Colors.grey, fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
