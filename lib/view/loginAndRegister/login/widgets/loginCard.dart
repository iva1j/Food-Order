import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/utils/strings.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 4,
      ),
      width: SizeConfig.blockSizeHorizontal * 90,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.blockSizeHorizontal * 5,
          right: SizeConfig.blockSizeHorizontal * 5,
          top: SizeConfig.blockSizeVertical * 3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              LoginRegisterPageStrings().login,
              style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 6,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 3,
                vertical: 0,
              ),
              child: Text(
                LoginRegisterPageStrings().email,
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 3,
                vertical: 0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: new UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 3,
                vertical: 0,
              ),
              child: Text(
                LoginRegisterPageStrings().password,
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 3,
                vertical: 0,
              ),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: new UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 10,
            ),
          ],
        ),
      ),
    );
  }
}
