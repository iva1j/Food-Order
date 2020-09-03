import 'package:FoodOrder/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/services/homeScreen/listOfScreen.dart';
import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfFoodViewModel {
  void initMeals() {
    return ListOfFood().initMeals();
  }

  void decreaseAmount(provider, BuildContext context, int index) {
    return ListOfFood().decreaseAmount(provider, context, index);
  }

  void increaseAmount(provider, BuildContext context, int index) {
    return ListOfFood().increaseAmount(provider, context, index);
  }
}
