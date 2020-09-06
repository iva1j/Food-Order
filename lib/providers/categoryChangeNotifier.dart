import 'package:FoodOrder/models/meal.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';

import '../models/meal.dart';
import '../utils/globalVariables.dart';
import '../utils/globalVariables.dart';
import '../view/mainScreen/widgets/dummy_data.dart';

String categoryID;
List<Meal> categoryMeals = List<Meal>();
List<Meal> cartMeals = List<Meal>();

/*
int returnMealIndexByImageURL(String imgURL) {
  for (int i = 0; i < DUMMY_MEALS.length; i++)
    if (DUMMY_MEALS[i].imageUrl == imgURL) return i;
  return -1;
}
*/
class CategoryChangeIndex with ChangeNotifier {
  double cartTotal = 0.0;
  int _selectedIndex = 0;
  int counter = 0;
  get currentIndex => _selectedIndex;

  get decrement => counter;

  set decrementCounter(int index) {
    if (inCart) {
      var price = double.parse(cartMeals[index].price);

      if (cartMeals[index].counter > 0) {
        cartMeals[index].counter--;
        cartTotal -= price;
        var newPrice = (price * cartMeals[index].counter).toString();
        (cartMeals[index].newPrice == null)
            ? cartMeals[index].newPrice = price.toString()
            : cartMeals[index].newPrice = newPrice;

        cartMeals[index].counter == 0
            ? cartMeals[index].newPrice = price.toString()
            : cartMeals[index].newPrice.toString();

        notifyListeners();
      } else
        cartMeals[index].counter = 0;
      notifyListeners();
    } else {
      var price = double.parse(categoryMeals[index].price);

      if (categoryMeals[index].counter > 0) {
        categoryMeals[index].counter--;
        cartTotal -= price;
        var newPrice = (price * categoryMeals[index].counter).toString();
        (categoryMeals[index].newPrice == null)
            ? categoryMeals[index].newPrice = price.toString()
            : categoryMeals[index].newPrice = newPrice;

        categoryMeals[index].counter == 0
            ? categoryMeals[index].newPrice = price.toString()
            : categoryMeals[index].newPrice.toString();

        print('ukupna cijena: ');
        print(categoryMeals[index].newPrice);
        notifyListeners();
      } else
        categoryMeals[index].counter = 0;
      notifyListeners();
    }
  }

  get increment => counter;

  set incrementCounter(int index) {
    if (inCart) {
      cartMeals[index].counter++;

      var price = double.parse(cartMeals[index].price);
      cartTotal += price;
      var newPrice = (price * cartMeals[index].counter).toString();

      (cartMeals[index].newPrice == null)
          ? cartMeals[index].newPrice = price.toString()
          : cartMeals[index].newPrice = newPrice;

      notifyListeners();
    } else {
      categoryMeals[index].counter++;

      var price = double.parse(categoryMeals[index].price);
      cartTotal += price;
      var newPrice = (price * categoryMeals[index].counter).toString();

      (categoryMeals[index].newPrice == null)
          ? categoryMeals[index].newPrice = price.toString()
          : categoryMeals[index].newPrice = newPrice;

      print('ukupna cijena: ');
      print(categoryMeals[index].newPrice);
      notifyListeners();
    }
  }

  set currentIndex(int index) {
    _selectedIndex = index;
    categoryID = DUMMY_CATEGORIES[index].id;
    categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();
    notifyListeners();
  }
}
