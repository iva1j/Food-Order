import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/buildShowDialog.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  const FoodCard({
    Key key,
  }) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: DUMMY_MEALS.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: Margin().symmetric(1, 10),
                child: GestureDetector(
                  onTap: () {
                    buildShowDialog(context, index);
                  },
                  child: Column(
                    children: [
                      Image.network(DUMMY_MEALS[index].imageUrl),
                      FoodInfo(index: index),
                    ],
                  ),
                ));
          }),
    );
  }


}
