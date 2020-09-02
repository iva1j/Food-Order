import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:FoodOrder/view/models/meal.dart';
import 'package:flutter/cupertino.dart';

String categoryID;
List<Meal> categoryMeals = List<Meal>();

class CategoryChangeIndex with ChangeNotifier {
  int _selectedIndex = 0;

  get currentIndex => _selectedIndex;
  get currentMeal => _selectedIndex;

  set currentIndex(int index) {
    _selectedIndex = index;
    categoryID = DUMMY_CATEGORIES[index].id;
    categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();
    print(categoryMeals.length);
    notifyListeners();
  }
}
