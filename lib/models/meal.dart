import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challenging, Hard }
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  String price;
  String newPrice;
  final List<String> ingredients;
  int counter = 0;

  Meal(
      {@required this.categories,
      @required this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.price,
      @required this.ingredients,
      this.newPrice,
      this.counter});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'totalPrice': newPrice,
      'count': counter,
    };
  }
}
