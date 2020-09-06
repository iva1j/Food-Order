import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:flutter/material.dart';

class OrdersShipped extends StatelessWidget {
  const OrdersShipped({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 2),
      child: Container(
        margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/done.png",
              width: SizeConfig.blockSizeVertical * 3,
            ),
            Text("Shipped", style: TextStyle(color: Colors.green)),
            Text(ShoppingCart().total, style: TextStyle(color: darkblue)),
            Text("price", style: TextStyle(color: darkblue)),
          ],
        ),
      ),
    );
  }
}
