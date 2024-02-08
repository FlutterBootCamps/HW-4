import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';

Widget card({required Product product1 }) {

  return SizedBox(
    height: 50,
    width: 150,
    child: Card(
          margin: const EdgeInsets.all(10),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                  child :
                  Image.asset(product1.image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover)
                  ),
                  Text("${product1.price} SAR ",
                  style: const TextStyle(
                  fontSize: 21.0,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Text(product1.name,
                  style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0)),),
                  ]),
          ),
        ),
  );
}









