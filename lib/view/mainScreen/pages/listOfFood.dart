import 'package:FoodOrder/utils/internetConnectivity.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/mainScreen/widgets/appBarTitle.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCategory/categoryCards.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodCard.dart';
import 'package:FoodOrder/view/mainScreen/widgets/cartButton.dart';
import 'package:FoodOrder/viewModel/HomeScreen/listOfFood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListOfFoods extends StatefulWidget {
  ListOfFoods(BuildContext context);

  @override
  _ListOfFoodsState createState() => _ListOfFoodsState();
}

class _ListOfFoodsState extends State<ListOfFoods> {
  @override
  void initState() {
    ListOfFoodViewModel().initMeals();
    InternetConnectivity().checkForConnectivity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTitle(),
        actions: [CartButton()],
      ),
      body: Column( 
        children: [CategoryCard(), FoodCard()], 
      ),
    );
  }
}
