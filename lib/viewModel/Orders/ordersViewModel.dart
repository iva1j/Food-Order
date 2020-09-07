import 'package:FoodOrder/providers/categoryChangeNotifier.dart';
import 'package:FoodOrder/utils/globalVariables.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:random_string/random_string.dart';

class OrdersViewModel {
  insertOrder() {
    double totalOrderPrice = 0;
    for (final x in cartMeals) {
      totalOrderPrice += x.counter * double.parse(x.price);
    }
    final orderID = randomNumeric(10);
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

// Future getOrders() async {
//   final QuerySnapshot orders = await Firestore.instance
//       .collection("users")
//       .document(userID)
//       .collection('userOrders')
//       .getDocuments();
//   List<DocumentSnapshot> favoritesDocs = orders.documents;
//   orderList.clear();
//   orderList = orders.documents;
//   print('list: ');
//   print(orderList[0]['orderID']);
//   return favoritesDocs;
// }
