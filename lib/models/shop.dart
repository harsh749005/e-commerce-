import 'package:counterapp/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  //products for sale
  final List<Product> _shop = [
    //product
    Product(
      name: "Product 1",
      price: 99.99,
      description: "item desciprtion",
      imagePath: "",
    ),
    // Product 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "item desciprtion",
      imagePath: "",
    ),
    // product 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "item desciprtion",
      imagePath: "",
    ),
    // product 4
    Product(
      name: "Product 4",
      price: 99.99,
      description: "item desciprtion",
      imagePath: "",
    ),
  ];

  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;
  //get user cart
  List<Product> get cart => _cart;
  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
