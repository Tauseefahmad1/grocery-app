import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GroceryModel extends ChangeNotifier {
  final List groceries = [
    ['Avocado', '4.00', 'images/avocado.png', Colors.green],
    ['Banana', '3.00', 'images/banana.png', Colors.yellow],
    ['Chicken', '2.50', 'images/chicken.png', Colors.brown],
    ['Water', '1.00', 'images/water.png', Colors.blue],
  ];
  List CartItems = [];

  void addToCart(index) {
    CartItems.add(groceries[index]);
    notifyListeners();
  }

  void removeFromCart(index) {
    CartItems.removeAt(index);
    notifyListeners();
  }

  String totalPrice() {
    double totalprice = 0;
    for (int i = 0; i < CartItems.length; i++) {
      totalprice = totalprice + double.parse(CartItems[i][1]);
    }
    return totalprice.toStringAsFixed(2);
  }
}
