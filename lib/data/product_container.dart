import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';

Widget ProductContainer(Product product) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8.0),
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Image.asset(
            product.image,
            
          ),
        ),
        SizedBox(height: 10),
        Text(
          '\$${product.price.toString()}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        SizedBox(height: 5),
        Text(
          product.brand,
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        Text(
          product.name,
          style: TextStyle(
            fontSize: 16.0,
           
          ),
        ),
      ],
    ),
  );
}
