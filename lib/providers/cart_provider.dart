import 'package:flutter/material.dart';
import 'package:flutter_project/models/cart.dart';
import 'package:flutter_project/models/product.dart';

class CartProvider extends ChangeNotifier {
  List<Cart> cart = [];
  double totalPrice = 0;
  void setTotal() {
    for (var element in cart) {
      totalPrice = element.price * element.quantity;
    }
  }

  void addToCart(Product product) {
    if (cart.isEmpty) {
      cart.add(Cart(
          id: product.id,
          name: product.name,
          price: product.price,
          image: product.image,
          totalQuantity: 10,
          quantity: 1));
    } else {
      var exist = cart.where((element) => element.id == product.id);
      if (exist.isEmpty) {
        cart.add(Cart(
            id: product.id,
            name: product.name,
            price: product.price,
            image: product.image,
            totalQuantity: 10,
            quantity: 1));
      } else {
        for (var element in cart) {
          if (element.id == product.id) {
            element.quantity = element.quantity + 1;
          }
        }
      }
    }
    setTotal();
    notifyListeners();
  }

  void removeItem(String id) {
    cart.removeWhere((element) => element.id == id);
    setTotal();
    notifyListeners();
  }

  void increaseNumber(String id) {
    for (var element in cart) {
      if (element.id == id) {
        element.quantity = element.quantity + 1;
      }
    }
    setTotal();

    notifyListeners();
  }

  void decrease(String id) {
    for (var element in cart) {
      if (element.id == id) {
        element.quantity = element.quantity - 1;
      }
    }
    setTotal();

    notifyListeners();
  }
}
