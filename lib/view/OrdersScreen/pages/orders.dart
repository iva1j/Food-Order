import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/view/OrdersScreen/widgets/ordersCard.dart';
import 'package:FoodOrder/view/mainScreen/widgets/Drawer/mainDrawer.dart';
import 'package:FoodOrder/viewModel/Orders/ordersViewModel.dart';
import 'package:flutter/material.dart';
import 'package:FoodOrder/viewModel/Register/registerViewModel.dart';

Future<void> getAllOrders() async {
 orderList =  await getOrders();
}

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  void initState() {
    getAllOrders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            iconTheme: new IconThemeData(color: darkblue)
          ),
          drawer: MainDrawer(),
          body: OrdersCard()),
    );
  }
}
