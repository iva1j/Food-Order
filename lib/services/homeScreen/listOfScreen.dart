import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/utils/internetConnectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../providers/categoryChangeNotifier.dart';
import '../../utils/globalVariables.dart';
import '../../utils/globalVariables.dart';

class ListOfFood {
  initMeals() {
    categoryID = DUMMY_CATEGORIES[currentTab].id;
    categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();
  }

  void decreaseAmount(
      CategoryChangeIndex provider, BuildContext context, int index) {
    InternetConnectivity().checkForConnectivity();
    hasActiveConnection
        ? provider.decrementCounter = index
        : Scaffold.of(context).showSnackBar(
            SnackBar(content: Text('Check you internet connection!')));
  }

  void increaseAmount(
      CategoryChangeIndex provider, BuildContext context, int index) {
    InternetConnectivity().checkForConnectivity();
    hasActiveConnection
        ? provider.incrementCounter = index
        : Scaffold.of(context).showSnackBar(
            SnackBar(content: Text('Check you internet connection!')));
  }

  String priceFormatter(int index) {
    return (categoryMeals[index].newPrice == null)
        ? NumberFormat.currency(locale: 'eu', symbol: '€').format(
            (double.parse(
                '${categoryMeals[index].price.toString().replaceAll(',', '.')}')),
          )
        : NumberFormat.currency(locale: 'eu', symbol: '€').format(
            (double.parse(
                '${categoryMeals[index].newPrice.toString().replaceAll(',', '.')}')),
          );
  }
}
