import 'package:FoodOrder/utils/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/quantityAndPrice.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Price extends StatefulWidget {
  const Price({
    Key key,
    @required this.price,
    @required this.widget,
    this.index,
  }) : super(key: key);

  final double price;
  final QuantityAndPrice widget;
  final int index;
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryChangeIndex>(context);

    return Text(
      (categoryMeals[widget.index].newPrice == null)
          ? NumberFormat.currency(locale: 'eu', symbol: '€').format(
              (double.parse(
                  '${categoryMeals[widget.index].price.toString().replaceAll(',', '.')}')),
            )
          : NumberFormat.currency(locale: 'eu', symbol: '€').format(
              (double.parse(
                  '${categoryMeals[widget.index].newPrice.toString().replaceAll(',', '.')}')),
            ),
      style: priceStyle(),
    );
  }
}
