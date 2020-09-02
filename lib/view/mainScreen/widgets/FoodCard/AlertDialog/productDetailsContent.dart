import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsContent extends StatelessWidget {
  const ProductDetailsContent({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Margin().symmetric(3, 3),
      child: Text(
        /// categoryMeals[index].price, # TODO: nakon što se unese ispravan API i povuku proizvodi, ovu liniju je potrebno otkomentarisati i dodijeliti joj pravu varijablu umjesto price.
        /// radi ljepšeg izgleda, printat ćemo LoremIpsum
        Names().lorem,
        style: productDetailsContentStyle(),
      ),
    );
  }
}
