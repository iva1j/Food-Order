import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/mainScreen/widgets/appBarTitle.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCategory/categoryCards.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfFoods extends StatefulWidget {
  @override
  _ListOfFoodsState createState() => _ListOfFoodsState();
}

class _ListOfFoodsState extends State<ListOfFoods> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTitle(),
      ),
      body: Column( 
        children: [CategoryCard(), FoodCard()],
      ),
    );
  }
}
