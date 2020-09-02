import 'package:FoodOrder/view/CartScreen/pages/cart.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/login.dart';
import 'package:FoodOrder/view/loginAndRegister/register/pages/register.dart';
import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:
          /*ChangeNotifierProvider<CategoryChangeIndex>(
        child: ListOfFoods(),
        create: (BuildContext context) => CategoryChangeIndex(),
      ),*/
          CartPage(),
    );
  }
}
