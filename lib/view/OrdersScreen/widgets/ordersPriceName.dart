import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/utils/margins.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrdersPriceRow extends StatelessWidget {
  const OrdersPriceRow({Key key, this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: orderList[index]['orderMeals'].length,
        itemBuilder: (_, int index2) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: Margin().only(0,0,0,10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        orderList[index]['orderMeals'][index2]['title']
                            .toString(),
                        style: TextStyle(color: darkblue)),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: Margin().only(0,0,10,0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        NumberFormat.currency(locale: 'eu', symbol: '€').format(
                          (double.parse(
                              '${orderList[index]['orderMeals'][index2]['price'].toString().replaceAll(',', '.')}')),
                        ),
                        style: TextStyle(color: darkblue)),
                  ],
                ),
              )
            ],
          );
        });
  }
}
