import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartButton.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartCard.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartPrice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Center(
            child: Text(
              ShoppingCart().title,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.clear,
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            CartCardContainer(),
            CartPriceContainer(),
            CartButtonContainer(),
          ],
        ),
      ),
    );
  }
}
