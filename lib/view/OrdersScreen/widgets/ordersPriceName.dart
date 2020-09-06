import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrdersPriceRow extends StatelessWidget {
  const OrdersPriceRow({Key key, this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(orderList[index]['productName'],
            style: TextStyle(color: darkblue)),
        Text(
            NumberFormat.currency(locale: 'eu', symbol: '€').format(
              (double.parse(
                  '${orderList[index]['productPrice'].toString().replaceAll(',', '.')}')),
            ),
            style: TextStyle(color: darkblue)),
      ],
    );
  }
}
