import 'package:FoodOrder/view/loginAndRegister/register/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/categoryChangeNotifier.dart';
import 'view/loginAndRegister/login/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CategoryChangeIndex>(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Login(),
      ),
      create: (BuildContext context) => CategoryChangeIndex(),
    );
  }
}
