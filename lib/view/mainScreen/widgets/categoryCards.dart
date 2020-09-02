import 'package:FoodOrder/utils/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
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
      height: 100,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 0.7), //(x,y)
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DUMMY_CATEGORIES.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              provider.currentIndex = index;
            },
            child: Center(
              child: Padding(
                padding: Margin().symmetric(0, 5),
                child: Container(
                  height: 52,
                  width: 94,
                  child: Center(
                    child: Text(
                      DUMMY_CATEGORIES[index].title,
                      style: TextStyle(
                        color: index == provider.currentIndex
                            ? Colors.white
                            : Colors.black45,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  decoration: index == provider.currentIndex
                      ? BoxDecoration(
                          color: Color.fromRGBO(255, 179, 102, 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(36)),
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(36)),
                        ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
