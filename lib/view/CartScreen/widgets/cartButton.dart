import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/CartScreen/widgets/buttonIcon.dart';
import 'package:FoodOrder/view/CartScreen/widgets/buttonText.dart';
import 'package:flutter/material.dart';

class CartButtonContainer extends StatelessWidget {
  const CartButtonContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 50,
      height: SizeConfig.blockSizeVertical * 7,
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: () {},
        child: Row(children: [
          ButtonIcon(),
          ButtonText(),
        ]),
      ),
    );
  }
}
