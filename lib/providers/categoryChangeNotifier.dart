import 'package:FoodOrder/models/meal.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';

import '../models/meal.dart';
import '../utils/globalVariables.dart';
import '../utils/globalVariables.dart';
import '../utils/globalVariables.dart';
import '../view/mainScreen/widgets/dummy_data.dart';
import '../view/mainScreen/widgets/dummy_data.dart';

String categoryID;
List<Meal> categoryMeals = List<Meal>();
List<Meal> cartMeals = List<Meal>();

class CategoryChangeIndex with ChangeNotifier {
  double _cartTotal = 0.0;
  // int currentIndex = 0;
  int _selectedIndex = 0;
  get currentIndex => _selectedIndex;

  get cartTotal => _cartTotal;

  set cartTotal(double total) {
    _cartTotal = total;
    notifyListeners();
  }

  clearCounter(int index) {
    cartMeals[index].counter = 0;
    if (cartMeals[index].newPrice != cartMeals[index].price)
      cartTotal -= double.parse(cartMeals[index].newPrice);
    cartMeals[index].newPrice = cartMeals[index].price;
    notifyListeners();
  }

  clearAllCounters() {
    for (final x in DUMMY_MEALS) {
      x.counter = 0;
      x.newPrice = x.price;
    }
    cartTotal = 0;
    notifyListeners();
  }

  set decrementCounter(int index) {
    print("NA DEKREMENTU");
    print(inCart);
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
      } else {
        cartMeals[index].counter = 0;
      }

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
      } else {
        categoryMeals[index].counter = 0;
      }

      notifyListeners();
    }
  }

  set incrementCounter(int index) {
    print("NA INKREMENTU");
    print(inCart);
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
    print("CARTTOTAL");
    print(cartTotal);
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
