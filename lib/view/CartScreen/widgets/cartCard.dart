import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/CartScreen/widgets/imageCart.dart';
import 'package:FoodOrder/view/CartScreen/widgets/priceCart.dart';
import 'package:FoodOrder/view/CartScreen/widgets/titleCart.dart';
import 'package:flutter/material.dart';

class CartCardContainer extends StatefulWidget {
  const CartCardContainer({
    Key key,
  }) : super(key: key);

  @override
  _CartCardContainerState createState() => _CartCardContainerState();
}

class _CartCardContainerState extends State<CartCardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 80,
      height: SizeConfig.blockSizeVertical * 15,
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 5,
          left: SizeConfig.blockSizeHorizontal * 4),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ImageCart(),
              TitleCart(),
              PriceCart(),
            ],
          )),
    );
  }
}
