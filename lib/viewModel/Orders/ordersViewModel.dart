import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:random_string/random_string.dart';

import '../../providers/categoryChangeNotifier.dart';

class OrdersViewModel {
  insertOrder() {
    double totalOrderPrice = 0;
    for (final x in cartMeals) {
      totalOrderPrice += x.counter * double.parse(x.price);
    }
    final orderID = randomAlphaNumeric(10);
    Firestore.instance
        .collection("users")
        .document(userID)
        .collection('userOrders')
        .document(orderID)
        .setData({
      'orderID': orderID,
      'orderMeals': cartMeals.map((e) => e.toMap()).toList(),
      'totalOrderPrice': totalOrderPrice,
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
