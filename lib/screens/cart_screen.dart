import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
  });
  @override
  State<CartScreen> createState() => _CartScreenState();
}

List<Product> cartlist = [];

class _CartScreenState extends State<CartScreen> {
  @override
  
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(62,65,81,255),
        body: Column(
          children: [
            Row(
              children: [],
            )
          ],
        )
    );
  }
}
