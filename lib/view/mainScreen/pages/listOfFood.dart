import 'package:FoodOrder/utils/internetConnectivity.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/OrdersScreen/pages/orders.dart';
import 'package:FoodOrder/view/mainScreen/widgets/Drawer/mainDrawer.dart';
import 'package:FoodOrder/view/mainScreen/widgets/appBarTitle.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCategory/categoryCards.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodCard.dart';
import 'package:FoodOrder/view/mainScreen/widgets/cartButton.dart';
import 'package:FoodOrder/viewModel/HomeScreen/listOfFood.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../providers/categoryChangeNotifier.dart';
import '../../../utils/globalVariables.dart';
import '../../../utils/globalVariables.dart';
import '../../../utils/globalVariables.dart';
import '../widgets/dummy_data.dart';

class ListOfFoods extends StatefulWidget {
  ListOfFoods({Key key, this.uid}) : super(key: key);

  final String uid;

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
    getAllOrders();
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
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTitle(),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2),
            child: CartButton(),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          CategoryCard(),
          FoodCard(),
        ],
      ),
    );
  }
}
