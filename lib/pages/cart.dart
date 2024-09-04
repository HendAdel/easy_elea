import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  static const String id = 'home';
  
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Text("Welcome to Cart!"),
    );
  }
}
