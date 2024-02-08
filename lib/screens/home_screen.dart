import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/models/product.dart';
import 'package:hw4/screens/cart_screen.dart';
import 'package:hw4/screens/prodect_screen.dart';
import 'package:hw4/widget/container_wedget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Product pr1 = productList[0];
  final Product pr2 = productList[1];
  final Product pr3 = productList[2];
  final Product pr4 = productList[3];
  final Product pr5 = productList[4];
  final Product pr6 = productList[5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(246, 246, 246, 255),
        body: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CartScreen()));
                  },
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Color.fromARGB(134, 134, 134, 255),
                    size: 30,
                  )),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 10 / 10,
                  shrinkWrap: false,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(product1: pr1)));
                        },
                        child: card(product1: pr1)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(product1: pr2)));
                        },
                        child: card(product1: pr2)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(product1: pr3)));
                        },
                        child: card(product1: pr3)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(product1: pr4)));
                        },
                        child: card(product1: pr4)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(product1: pr5)));
                        },
                        child: card(product1: pr5)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(product1: pr6)));
                        },
                        child: card(product1: pr6)),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
