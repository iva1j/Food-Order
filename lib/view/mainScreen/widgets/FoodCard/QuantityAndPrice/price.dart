import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/quantityAndPrice.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Price extends StatefulWidget {
  const Price({
    Key key,
    @required this.price,
    @required this.widget,
  }) : super(key: key);

  final double price;
  final QuantityAndPrice widget;

  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.price != 0
          ? NumberFormat.currency(locale: 'eu', symbol: '€').format(
              (double.parse('${widget.price.toString().replaceAll(',', '.')}')),
            )
          : NumberFormat.currency(locale: 'eu', symbol: '€').format(
              (double.parse(
                  '${DUMMY_MEALS[widget.widget.index].price.toString().replaceAll(',', '.')}')),
            ),
      style: priceStyle(),
    );
  }
}
