import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/login.dart';
import 'package:FoodOrder/view/loginAndRegister/register/pages/register.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/signWithGoogleButton.dart';
import 'package:FoodOrder/view/mainScreen/widgets/appBarTitle.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCategory/categoryCards.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodCard.dart';
import 'package:FoodOrder/viewModel/HomeScreen/listOfFood.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTitle(),
        actions: <Widget>[
          FlatButton(
            child: Text("Log Out"),
            textColor: Colors.black,
            onPressed: () {
              signOut();
              FirebaseAuth.instance
                  .signOut()
                  .then((result) => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login())))
                  .catchError((err) => print(err));
            },
          )
        ],
      ),
      body: Column(
        children: [CategoryCard(), FoodCard()],
      ),
    );
  }
}
