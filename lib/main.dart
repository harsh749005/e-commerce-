import 'package:lavishlayers/components/cart_page.dart';
import 'package:lavishlayers/models/shop.dart';
import 'package:lavishlayers/pages/intro_page.dart';
import 'package:lavishlayers/pages/shop_page.dart';
import 'package:lavishlayers/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child:const MyApp()
      )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page':(context) => const IntroPage(),
        '/shop_page':(context) => const ShopPage(),
        '/cart_page':(context) => const CartPage()
      },
    );
  }
}
