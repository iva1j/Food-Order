import 'package:FoodOrder/models/meal.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';

String categoryID;
List<Meal> categoryMeals = List<Meal>();

class CategoryChangeIndex with ChangeNotifier {
  int _selectedIndex = 0;
  int counter = 0;
  get currentIndex => _selectedIndex;

  get decrement => counter;

  set decrementCounter(int index) {
    var price = double.parse(categoryMeals[index].price);

    if (categoryMeals[index].counter > 0) {
      categoryMeals[index].counter--;
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

  get increment => counter;

  set incrementCounter(int index) {
    categoryMeals[index].counter++;

    var price = double.parse(categoryMeals[index].price);
    var newPrice = (price * categoryMeals[index].counter).toString();

    (categoryMeals[index].newPrice == null)
        ? categoryMeals[index].newPrice = price.toString()
        : categoryMeals[index].newPrice = newPrice;

    print('ukupna cijena: ');
    print(categoryMeals[index].newPrice);
    notifyListeners();
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
