// import 'package:FoodOrder/utils/globalVariables.dart';
// import 'package:FoodOrder/utils/sizeconfig.dart';
// import 'package:FoodOrder/utils/strings.dart';
// import 'package:FoodOrder/view/loginAndRegister/login/pages/home.dart';
// import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/horizontalLine.dart';
// import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/imageCard.dart';
// import 'package:FoodOrder/view/loginAndRegister/sharedWidgets/signWithGoogleButton.dart';
// import 'package:FoodOrder/viewModel/register/registerViewModel.dart';
// import 'package:flutter/material.dart';

// import '../../../utils/colors.dart';

// class RegisterButton extends StatefulWidget {
//   const RegisterButton({
//     Key key,
//   }) : super(key: key);

//   @override
//   _RegisterButtonState createState() => _RegisterButtonState();
// }

// class _RegisterButtonState extends State<RegisterButton> {
//   void handleSignup() {
//     if (formkey.currentState.validate()) {
//       formkey.currentState.save();
//       signUp(email, password, context).then((value) {
//         if (value != null) {
//           Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => Home(),
//               ));
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       onPressed: handleSignup,
//       color: raisedButtonColor,
//       child: Text(
//         "REGISTER",
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.w700,
//         ),
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(5.0),
//       ),
//     );
//   }
// }
