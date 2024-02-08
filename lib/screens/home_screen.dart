import 'package:flutter/material.dart';
import 'package:hw4/data/cart_list.dart';
import 'package:hw4/screens/cart_screen.dart';
import '../components/product_card.dart';
import '../data/product_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE4C9),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFE4C9),
        centerTitle: true,
        title: const Text(
          "Our Products",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartScreen(
                              cartList: cartList,
                            )));
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 35,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            childAspectRatio: (1 / 1.5),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(productList.length,
                (index) => ProductCard(product: productList[index])),
          ),
        ),
      ),
    );
  }
}
