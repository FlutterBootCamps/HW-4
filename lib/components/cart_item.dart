import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(backgroundImage: AssetImage(product.image)),
          Text(
            "X${product.quantity}",
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Text(
            product.name,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            "\$${product.price * product.quantity}",
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
