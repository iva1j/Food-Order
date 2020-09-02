import 'package:FoodOrder/utils/margins.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/mainScreen/widgets/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDetailsAlertDialog extends StatefulWidget {
  const FoodDetailsAlertDialog({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;
  @override
  _FoodDetailsAlertDialogState createState() => _FoodDetailsAlertDialogState();
}

class _FoodDetailsAlertDialogState extends State<FoodDetailsAlertDialog> {
  @override
  Widget build(BuildContext context) {
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
                  DUMMY_MEALS[widget.index].imageUrl,
                  height: SizeConfig.blockSizeVertical * 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: Margin().only(0, 0, 0, 3),
              child: Text(
                DUMMY_MEALS[widget.index].title,
                style: TextStyle(
                  color: Color.fromRGBO(255, 179, 102, 100),
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
  }
}
