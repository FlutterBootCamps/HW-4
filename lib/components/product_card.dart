import 'package:flutter/material.dart';
import 'package:hw4/screens/product_screen.dart';

import '../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductPage(product: product)));
      },
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                product.image,
                width: 100,
                height: 100,
              )),
              Text("\$${product.price}",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
              Text(product.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              Text(product.brand,
                  style: const TextStyle(fontSize: 16, color: Colors.grey))
            ],
          ),
        ),
      ),
    );
  }
}
