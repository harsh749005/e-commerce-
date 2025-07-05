import 'package:lavishlayers/models/product.dart';
import 'package:flutter/material.dart';

// Shop class manages product list and user cart with state notifications.
class Shop extends ChangeNotifier {
  // List of hoodie products available in the shop
  final List<Product> _shop = [
    // Cozy Winter Hoodie
    Product(
      name: "Cozy Winter Hoodie",
      price: 49.99,
      description: "Stay warm and stylish with this thick fleece-lined winter hoodie.",
      imagePath: "assets/img1.avif",
    ),
    // Minimalist Zip Hoodie
    Product(
      name: "Minimalist Zip Hoodie",
      price: 39.99,
      description: "Lightweight and sleek, perfect for casual outings or gym wear.",
      imagePath: "assets/img2.avif",
    ),
    // Vintage Wash Hoodie
    Product(
      name: "Vintage Wash Hoodie",
      price: 59.99,
      description: "Retro style meets modern comfort in this soft washed-fabric hoodie.",
      imagePath: "assets/img3.avif",
    ),
    // Streetwear Oversized Hoodie
    Product(
      name: "Oversized Hoodie",
      price: 69.99,
      description: "Bold and roomy design, a must-have for street fashion lovers.",
      imagePath: "assets/img4.avif",
    ),
    // Classic Black Hoodie
    Product(
      name: "Classic Black Hoodie",
      price: 44.99,
      description: "Timeless black hoodie made from premium cotton blend.",
      imagePath: "assets/img5.avif",
    ),
  ];

  // User's shopping cart
  List<Product> _cart = [];

  // Getter for available shop products
  List<Product> get shop => _shop;

  // Getter for products added to the cart
  List<Product> get cart => _cart;

  // Add a product to the user's cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners(); // Notify UI to update
  }

  // Remove a product from the user's cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners(); // Notify UI to update
  }
}
