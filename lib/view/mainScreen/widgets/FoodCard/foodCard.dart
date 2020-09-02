import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/mainScreen/pages/dummy_data.dart';
import 'package:FoodOrder/view/mainScreen/widgets/FoodCard/foodInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  const FoodCard({
    Key key,
  }) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: DUMMY_MEALS.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: Margin().symmetric(1, 10),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            scrollable: true,
                            title: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(50),
                                          bottomRight: Radius.circular(50)),
                                      child: Image.network(
                                        DUMMY_MEALS[index].imageUrl,
                                        // width: SizeConfig.blockSizeHorizontal*50,
                                        height:
                                            SizeConfig.blockSizeVertical * 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: Margin().only(0, 0, 0, 3),
                                    child: Text(
                                      DUMMY_MEALS[index].title,
                                      style: TextStyle(
                                        color:
                                            Color.fromRGBO(255, 179, 102, 100),
                                        fontFamily: 'Roboto',
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: Margin().symmetric(3, 2),
                                    child: Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            titlePadding: EdgeInsets.all(0),
                            elevation: 0,
                          );
                        });
                  },
                  child: Column(
                    children: [
                      Image.network(DUMMY_MEALS[index].imageUrl),
                      FoodInfo(index: index),
                    ],
                  ),
                ));
          }),
    );
  }
}
