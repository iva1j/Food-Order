import 'package:FoodOrder/utils/colors.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/OrdersScreen/pages/orders.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/login.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:FoodOrder/viewModel/SignIn/googleISignInViewModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../utils/globalVariables.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/drawerbg.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Food Order",
                  style: TextStyle(
                      fontSize: 28, color: orange, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () async {
              inCart = false;
              await Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => ListOfFoods(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Your Orders"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => OrdersPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
            onTap: () {
              email = null;
              userID = null;
              signOut();
              FirebaseAuth.instance
                  .signOut()
                  .then((result) => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login())))
                  .catchError((err) => print(err));
              email = null;
            },
          ),
        ],
      ),
    );
  }
}
