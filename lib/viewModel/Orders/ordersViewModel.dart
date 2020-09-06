import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:random_string/random_string.dart';

import '../../providers/categoryChangeNotifier.dart';

class OrdersViewModel {
  insertOrder() {
    final orderID = randomNumeric(5);
    Firestore.instance
        .collection("users")
        .document(userID)
        .collection('userOrders')
        .document(orderID)
        .setData({
      'orderID': orderID,
      //'orderMeals': cartMeals,
    });
    return null;
  }
}

Future getOrders() async {
  final QuerySnapshot orders = await Firestore.instance
      .collection('users')
      .document(userID)
      .collection('orders')
      .document('order1')
      .collection('product1')
      .getDocuments();
  List<DocumentSnapshot> favoritesDocs = orders.documents;
  orderList.clear();
  orderList = orders.documents;
  // print(orderList[0]);
  return favoritesDocs;
}
