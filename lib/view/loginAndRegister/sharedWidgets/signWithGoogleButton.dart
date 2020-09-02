import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/loginAndRegister/login/pages/home.dart';
import 'package:FoodOrder/viewModel/signIn/signInGoogleViewModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class SignWithGoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical,
      ),
      child: GoogleSignInButton(
        onPressed: () => googleSignIn().whenComplete(() async {
          FirebaseUser user = await FirebaseAuth.instance.currentUser();

          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
        }),
        darkMode: false,
      ),
    );
  }
}
