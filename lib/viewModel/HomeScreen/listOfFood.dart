import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';

void initMeals() {
  categoryID = DUMMY_CATEGORIES[0].id;
  categoryMeals = DUMMY_MEALS.where((meal) {
    return meal.categories.contains(categoryID);
  }).toList();
}
