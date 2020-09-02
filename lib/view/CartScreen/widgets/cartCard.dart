import 'package:FoodOrder/utils/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/QuantityAndPrice/decreaseQuantityButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCardContainer extends StatelessWidget {
  const CartCardContainer({
    Key key,
  }) : super(key: key);

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
              Container(
                margin:
                    EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 5),
                child: Image.asset(
                  "assets/images/milk.png",
                  height: 50,
                ),
              ),
              Container(
                  margin:
                      EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 5),
                  child: Text('Milk',
                      style: TextStyle(color: Colors.grey, fontSize: 20))),
              Container(
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
              ),
            ],
          )),
    );
  }
}
