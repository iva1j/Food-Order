import 'package:FoodOrder/utils/Providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/sizeconfig.dart';
import 'package:FoodOrder/view/mainScreen/pages/listOfFood.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class SignWithGoogleButton extends StatefulWidget {
  @override
  _SignWithGoogleButtonState createState() => _SignWithGoogleButtonState();
}

class _SignWithGoogleButtonState extends State<SignWithGoogleButton> {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseUser user;

  GoogleSignIn googleSignIn = new GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical,
      ),
      child: GoogleSignInButton(
        onPressed: () {
          handleSignIn();
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider<CategoryChangeIndex>(
                  child: ListOfFoods(),
                  create: (BuildContext context) => CategoryChangeIndex())));
        },
        darkMode: false,
      ),
    );
  }

  Future<void> handleSignIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    AuthResult result = (await auth.signInWithCredential(credential));

    user = result.user;
  }
}
