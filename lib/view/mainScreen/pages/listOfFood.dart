import 'package:FoodOrder/utils/internetConnectivity.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/login.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/signWithGoogleButton.dart';
import 'package:FoodOrder/view/mainScreen/widgets/Drawer/mainDrawer.dart';
import 'package:FoodOrder/view/mainScreen/widgets/appBarTitle.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCategory/categoryCards.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodCard.dart';
import 'package:FoodOrder/view/mainScreen/widgets/cartButton.dart';
import 'package:FoodOrder/viewModel/HomeScreen/listOfFood.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfFoods extends StatefulWidget {
  ListOfFoods({Key key, this.uid}) : super(key: key);

  final String uid;
  //ListOfFoods(BuildContext context);

  @override
  _ListOfFoodsState createState() => _ListOfFoodsState();
}

class _ListOfFoodsState extends State<ListOfFoods> {
  FirebaseUser currentUser;
  @override
  void initState() {
    ListOfFoodViewModel().initMeals();
    InternetConnectivity().checkForConnectivity();
    this.getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {
    currentUser = await FirebaseAuth.instance.currentUser();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTitle(),
        actions: <Widget>[
          CartButton(),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [CategoryCard(), FoodCard()],
      ),
    );
  }
}
