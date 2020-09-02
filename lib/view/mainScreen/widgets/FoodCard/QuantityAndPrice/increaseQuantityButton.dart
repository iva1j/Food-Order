import 'package:FoodOrder/utils/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

int counter = 0;

class IncreaseQuantityButton extends StatefulWidget {
  const IncreaseQuantityButton({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;
  @override
  _IncreaseQuantityButtonState createState() => _IncreaseQuantityButtonState();
}

class _IncreaseQuantityButtonState extends State<IncreaseQuantityButton> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryChangeIndex>(context);
    return SizedBox(
      width: 35,
      height: 35,
      child: FlatButton(
        padding: Margin().all(0),
        onPressed: () {
          //# TODO: Implement function for increasing quantity of the food and change the price acording to that amount
          // provider.currentIndex = widget.index;
          provider.incrementCounter = widget.index;
        },
        child: Text(
          Names().increase,
          style: increaseQuantityButtonStyle(),
        ),
      ),
    );
  }
}
