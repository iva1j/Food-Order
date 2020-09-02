import 'package:FoodOrder/view/loginAndRegister/login/pages/home.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'view/loginAndRegister/login/pages/login.dart';
import 'view/loginAndRegister/register/pages/register.dart';
import 'view/loginAndRegister/register/pages/register.dart';

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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseUser>(
      future: FirebaseAuth.instance.currentUser(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          FirebaseUser user = snapshot.data;
          return Home();
        } else {
          return Login();
        }
      },
    );
  }
}
