import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/OrdersScreen/widgets/ordersPriceName.dart';
import 'package:FoodOrder/view/OrdersScreen/widgets/ordersShipped.dart';
import 'package:flutter/material.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: ListView.builder(
            itemBuilder: (_, int index) {
              return ExpansionTile(
                title: Text(
                  orderList[index]['productName'],
                  style: TextStyle(color: darkblue),
                ),
                backgroundColor: lightblue,
                children: [
                  Column(
                    children: [
                      OrdersPriceRow(),
                      OrdersShipped(),
                    ],
                  ),
                ],
                // ),
              );
            },
            itemCount: orderList.length,
          )),
    );
  }
}
