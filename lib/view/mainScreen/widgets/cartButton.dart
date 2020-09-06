import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/view/CartScreen/pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';

import '../../../providers/categoryChangeNotifier.dart';
import '../../../utils/globalVariables.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryChangeIndex>(context);
    return IconButton(
        icon: Badge(
          child: Icon(
            Icons.shopping_cart,
            color: darkblue,
            size: 30,
          ),
          badgeContent: Text('10'),
          badgeColor: Colors.orange,
          animationType: BadgeAnimationType.scale,
          animationDuration: Duration(milliseconds: 130),
        ),
        onPressed: () {
          inCart = true;
          print("OVDJE CARTTOTAL");
          print(provider.cartTotal);
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => CartPage(),
            ),
          );
        });
  }
}
