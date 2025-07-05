import 'package:lavishlayers/components/my_button.dart';
import 'package:lavishlayers/models/product.dart';
import 'package:lavishlayers/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: Text("Remove this from cart ?"),
            actions: [
              // cancel buttons
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              //yes Button
              MaterialButton(
                onPressed:
                    () => {
                      //pop dialog
                      Navigator.pop(context),
                      //add to cart
                      context.read<Shop>().removeFromCart(product),
                    },
                child: Text("Yes"),
              ),
            ],
          ),
    );

  }
    void payButtonPressed(BuildContext context) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
              content: Text("User wants to pay! Implementing soon. . ."),
          ));
    }

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
            ? Center(child: Text("Your Cart is empty.."))
            : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                //get individual item in cart
                final item = cart[index];
                //return as a cart title UI
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () => removeItemFromCart(context, item),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
            onTap: () => payButtonPressed(context),
             child: Text("Pay Now")),
          ),
        ],
      ),
    );
  }
}
