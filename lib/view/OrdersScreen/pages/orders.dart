import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/OrdersScreen/widgets/ordersCard.dart';
import 'package:FoodOrder/view/mainScreen/widgets/Drawer/mainDrawer.dart';
import 'package:FoodOrder/viewModel/Orders/ordersViewModel.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    getOrders();
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              ShoppingCart().ordersTitle,
              style: TextStyle(color: darkblue),
            ),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0))),
          ),
          // leading: Icon(Icons.clear, color: Colors.grey)),
          drawer: MainDrawer(),
          body: OrdersCard()),
    );
  }
}
