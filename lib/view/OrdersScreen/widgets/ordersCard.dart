import 'package:FoodOrder/models/meal.dart';
import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/OrdersScreen/pages/orders.dart';
import 'package:FoodOrder/view/OrdersScreen/widgets/ordersPriceName.dart';
import 'package:FoodOrder/view/OrdersScreen/widgets/ordersShipped.dart';
import 'package:flutter/material.dart';

class OrdersCard extends StatefulWidget {
  const OrdersCard({
    Key key,
  }) : super(key: key);

  @override
  _OrdersCardState createState() => _OrdersCardState();
}

class _OrdersCardState extends State<OrdersCard> {
  @override
  void initState() {
    getAllOrders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return orderList.length != 0 && orderList.isNotEmpty
        ? ListView.builder(
            itemCount: orderList.length,
            shrinkWrap: true,
            itemBuilder: (_, int index) {
              return Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 8,
                    top: SizeConfig.blockSizeVertical * 2),
                width: SizeConfig.blockSizeHorizontal * 85,
                child: SizedBox(
                  child: Card(
                      elevation: 0.3,
                      color: lightblue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: ExpansionTile(
                        title: Text(
                          'Order: #' + orderList[index]['orderID'].toString(),
                          style: TextStyle(color: darkblue),
                        ),
                        backgroundColor: lightblue,
                        childrenPadding: Margin().only(0, 1, 0, 0),
                        children: [
                          Column(
                            children: [
                              OrdersPriceRow(index: index),
                              OrdersShipped(index: orderList[index]),
                            ],
                          ),
                        ],
                      )),
                ),
              );
            })
        : Center(
            child: Text('You dont have any order by now'),
          );
  }
}
