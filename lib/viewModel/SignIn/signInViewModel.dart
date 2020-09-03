import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:FoodOrder/view/loginAndRegister/login/widgets/loginCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> isUserRegistered() async {
  final QuerySnapshot result = await Firestore.instance
      .collection('users')
      .where('email', isEqualTo: emailInputController.text)
      .where('password', isEqualTo: pwdInputController.text)
      .limit(1)
      .getDocuments();
  final List<DocumentSnapshot> dokument = result.documents;
  if (dokument.length > 0) {
    status = true;
    print("Trenutni status (print od SignIn-a):" + status.toString());
  } else {
    status = false;
    print("Trenutni status(print od SignIn-a):" + status.toString());
  }
}
