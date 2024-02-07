import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/models/product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.product1});
  final Product product1;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isFavorite = false;
  List<Product> cart = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(246, 255, 255, 255),
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(110, 113, 125, 255),
                ))),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(product1.image,
                      height: 300, width: 300, fit: BoxFit.cover)),
              Text(
                product1.name,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              Text(
                "${product1.price} SAR",
                style: const TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const Text(
                "about the product:",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
               SizedBox(
                child: Text(
                  product1.description,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              Text(
                product1.brand,
                style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.favorite,
                          size: 30.0,
                          color: (isFavorite == true)
                              ? Colors.red
                              : Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      }),
                  ElevatedButton(
                    onPressed: () {
                      cart.add(product1);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(226,206,182,255)
),
                    ),
                    child: const Text(
                      "Add to cart",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
