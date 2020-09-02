import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/loginCard.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/horizontalLine.dart';
import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/imageCard.dart';
import 'package:FoodOrder/viewModel/signIn/signInGoogleViewModel.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => signOutUser().then((value) {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Login()),
                  (Route<dynamic> route) => false);
            }),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCard(),
          ],
        ),
      ),
    );
  }
}
