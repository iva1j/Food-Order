import 'package:FoodOrder/utils/strings.dart';
import 'package:flutter/material.dart';
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(Names().appBarName,
        style: TextStyle(
          color: Colors.black45,
          fontFamily: 'Roboto',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
