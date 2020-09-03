import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/viewModel/HomeScreen/listOfFood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DecreaseQuantityButton extends StatelessWidget {
  const DecreaseQuantityButton({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryChangeIndex>(context);
    return SizedBox(
      width: 35,
      height: 35,
      child: FlatButton(
        padding: Margin().all(0),
        onPressed: () {
          ListOfFoodViewModel().decreaseAmount(provider, context, index);
        },
        child: Text(
          Names().decrease,
          style: decreaseQuantityButtonStyle(),
        ),
      ),
    );
  }
}
