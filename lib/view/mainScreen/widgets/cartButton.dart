import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/view/CartScreen/pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/globalVariables.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.add_shopping_cart,
          color: orange,
          size: 30,
        ),
        onPressed: () {
          inCart = true;
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => CartPage(),
            ),
          );
        });
  }
}
