import 'package:FoodOrder/view/loginAndRegister/login/pages/login.dart';
import 'package:FoodOrder/view/loginAndRegister/register/pages/register.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
  }
}
