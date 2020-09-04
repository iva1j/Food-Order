import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
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
              leading: Icon(Icons.clear, color: Colors.grey)),
          body: Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 8,
                top: SizeConfig.blockSizeVertical * 4),
            width: SizeConfig.blockSizeHorizontal * 85,
            child: Card(
              elevation: 0.3,
              color: lightblue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Theme(
                data: theme,
                child: ExpansionTile(
                  title: Text(
                    "Order #123 ",
                    style: TextStyle(color: darkblue),
                  ),
                  backgroundColor: lightblue,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("title", style: TextStyle(color: darkblue)),
                            Text("price", style: TextStyle(color: darkblue)),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockSizeVertical * 2),
                          child: Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/done.png",
                                  width: SizeConfig.blockSizeVertical * 3,
                                ),
                                Text("Shipped",
                                    style: TextStyle(color: Colors.green)),
                                Text(ShoppingCart().total,
                                    style: TextStyle(color: darkblue)),
                                Text("price",
                                    style: TextStyle(color: darkblue)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
