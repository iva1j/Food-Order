import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartButton.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartCard.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartPrice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../services/homeScreen/listOfScreen.dart';
import '../../../services/homeScreen/listOfScreen.dart';
import '../../../services/homeScreen/listOfScreen.dart';
import '../../../services/homeScreen/listOfScreen.dart';
import '../../../utils/margins.dart';
import '../../../utils/sizeconfig.dart';
import '../../mainScreen/pages/listOfFood.dart';
import '../../mainScreen/widgets/FoodCard/buildShowDialog.dart';
import '../../mainScreen/widgets/FoodCard/foodInfo.dart';
import '../../mainScreen/widgets/dummy_data.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    // TODO: implement initState
    cartMeals = DUMMY_MEALS.where((meal) {
      return meal.counter > 0;
    }).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Center(
            child: Text(
              ShoppingCart().title,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Provider.of<CategoryChangeIndex>(context).currentIndex = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChangeNotifierProvider<CategoryChangeIndex>(
                    child: ListOfFoods(),
                    create: (BuildContext context) => CategoryChangeIndex(),
                  ),
                ),
              );
            },
            child: Icon(
              Icons.clear,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: SizeConfig.blockSizeVertical * 70,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: cartMeals.length,
                  itemBuilder: (BuildContext context, int index) {
                    String url = cartMeals[index].imageUrl;
                    return Container(
                      margin: Margin().symmetric(1, 10),
                      child: GestureDetector(
                        onTap: () {
                          buildShowDialog(context, index);
                        },
                        child: Column(
                          children: [
                            Image.network(
                              url,
                              fit: BoxFit.fill,
                              height: 300,
                            ),
                            FoodInfo(
                              index: index,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            CartPriceContainer(),
            CartButtonContainer(),
          ],
        ),
      ),
    );
  }
}
