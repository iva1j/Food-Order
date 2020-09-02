import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/style.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCategory/categoryCardBody.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({
    Key key,
  }) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryChangeIndex>(context);
    return Container(
      height: SizeConfig.safeBlockVertical * 12,
      decoration: categoryCardDecoration(),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DUMMY_CATEGORIES.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCardBody(provider: provider, index: index);
        },
      ),
    );
  }
}
