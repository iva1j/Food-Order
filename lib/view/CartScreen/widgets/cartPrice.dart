import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../utils/globalVariables.dart';
import '../../mainScreen/widgets/cartButton.dart';

class CartPriceContainer extends StatelessWidget {
  const CartPriceContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryChangeIndex>(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 3,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 14),
            child: Text(
              "Total:",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 50),
            child: Text(
              NumberFormat.currency(locale: 'eu', symbol: '€').format(
                (double.parse(
                    '${provider.cartTotal.toString().replaceAll(',', '.')}')),
              ),
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
