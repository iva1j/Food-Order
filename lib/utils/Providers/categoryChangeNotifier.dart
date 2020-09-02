import 'package:flutter/cupertino.dart';

class CategoryChangeIndex with ChangeNotifier {
  int _selectedIndex = 0;
  get currentIndex => _selectedIndex;

  set currentIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
