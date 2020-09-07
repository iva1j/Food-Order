import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartButton.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartCard.dart';
import 'package:FoodOrder/view/CartScreen/widgets/cartPrice.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../providers/categoryChangeNotifier.dart';
import '../../../services/homeScreen/listOfScreen.dart';
import '../../../services/homeScreen/listOfScreen.dart';
import '../../../services/homeScreen/listOfScreen.dart';
import '../../../services/homeScreen/listOfScreen.dart';
import '../../../utils/globalVariables.dart';
import '../../../utils/globalVariables.dart';
import '../../../utils/globalVariables.dart';
import '../../../utils/margins.dart';
import '../../../utils/sizeconfig.dart';
import '../../../utils/style.dart';
import '../../../utils/style.dart';
import '../../../viewModel/HomeScreen/listOfFood.dart';
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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    cartMeals = DUMMY_MEALS.where((meal) {
      return meal.counter > 0;
    }).toList();
    final provider = Provider.of<CategoryChangeIndex>(context);
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
              inCart = false;

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => ListOfFoods(),
                ),
              );
            },
            child: Icon(
              Icons.clear,
              color: Colors.black,
            ),
          ),
        ),
        body: cartMeals.length != 0 && cartMeals.isNotEmpty
            ? Column(
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
                                  Text(
                                    cartMeals[index].title,
                                    style: foodNameStyle(),
                                  ),
                                  Text(
                                    cartMeals[index]
                                            .ingredients
                                            .toString()
                                            .contains('[')
                                        ? FoodElements().ingridients +
                                            cartMeals[index]
                                                .ingredients
                                                .toString()
                                                .replaceAll('[', '')
                                                .replaceAll(']', '')
                                        : 'Food details are not provided',
                                    style: foodInfoStyle(),
                                  ),
                                  Container(
                                    margin: Margin().only(2, 0, 2, 0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 35,
                                          height: 35,
                                          child: FlatButton(
                                            padding: Margin().all(0),
                                            onPressed: () {
                                              ListOfFoodViewModel()
                                                  .decreaseAmount(
                                                      provider, context, index);
                                            },
                                            child: Text(
                                              Names().decrease,
                                              style:
                                                  decreaseQuantityButtonStyle(),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          cartMeals[index].counter.toString(),
                                          style: quantityStyle(),
                                        ),
                                        SizedBox(
                                          width: 35,
                                          height: 35,
                                          child: FlatButton(
                                            padding: Margin().all(0),
                                            onPressed: () {
                                              ListOfFoodViewModel()
                                                  .increaseAmount(
                                                      provider, context, index);
                                            },
                                            child: Text(
                                              Names().increase,
                                              style:
                                                  increaseQuantityButtonStyle(),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        InkWell(
                                          onTap: () {
                                            provider.clearCounter(index);
                                          },
                                          child: Icon(
                                            Icons.delete,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Spacer(),
                                        /*Text(
                                          ListOfFoodViewModel()
                                              .priceFormatterViewModel(index),
                                          style: priceStyle(),
                                        ),*/
                                        Text(
                                          (cartMeals[index].newPrice == null)
                                              ? NumberFormat.currency(
                                                      locale: 'eu', symbol: '€')
                                                  .format(
                                                  (double.parse(
                                                      '${cartMeals[index].price.toString().replaceAll(',', '.')}')),
                                                )
                                              : NumberFormat.currency(
                                                      locale: 'eu', symbol: '€')
                                                  .format(
                                                  (double.parse(
                                                      '${cartMeals[index].newPrice.toString().replaceAll(',', '.')}')),
                                                ),
                                          style: priceStyle(),
                                        ),
                                      ],
                                    ),
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
              )
            : Center(
                child: Text("There are no items in the cart."),
              ),
      ),
    );
  }
}
