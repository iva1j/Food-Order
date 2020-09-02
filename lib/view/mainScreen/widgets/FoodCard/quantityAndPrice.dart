import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class QuantityAndPrice extends StatefulWidget {
  const QuantityAndPrice({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _QuantityAndPriceState createState() => _QuantityAndPriceState();
}

class _QuantityAndPriceState extends State<QuantityAndPrice> {
  int counter = 0;
  double price = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Margin().only(2, 0, 2, 0),
      child: Row(
        children: [
          SizedBox(
            width: 35,
            height: 35,
            child: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                //# TODO: Implement function for decreasing quantity of the food and change the price acording to that amount
              },
              child: Text(
                "-",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
          Text(
            counter.toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.black38,
            ),
          ),
          SizedBox(
            width: 35,
            height: 35,
            child: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                //# TODO: Implement function for increasing quantity of the food and change the price acording to that amount
              },
              child: Text(
                "+",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
          Spacer(),
          Text(
            price != 0
                ? NumberFormat.currency(locale: 'eu', symbol: '€').format(
                    (double.parse('${price.toString().replaceAll(',', '.')}')),
                  )
                : NumberFormat.currency(locale: 'eu', symbol: '€').format(
                    (double.parse(
                        '${DUMMY_MEALS[widget.index].price.toString().replaceAll(',', '.')}')),
                  ),
            style: TextStyle(color: Colors.black38, fontSize: 20),
          )
        ],
      ),
    );
  }
}
