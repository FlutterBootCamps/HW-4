

import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';

//this item will show on cart page to show the details and price and quantity for each procduct
class ItemCartWidget extends StatelessWidget {
  final Product product;

  const ItemCartWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset(product.image, width: 40, height: 40,),
              ),
              const SizedBox(width: 20,),
              const Text("1 x", style: TextStyle(color: Colors.white),),
              const SizedBox(width: 50,),
              Text(
                  product.name,
                  style: const TextStyle(color: Colors.white)

              ),
            ],
          ),
          Text(
            product.price.toString(),
              style: const TextStyle(color: Colors.white)
          )
        ],
      ),
    );
  }
}
