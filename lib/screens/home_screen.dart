import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/screens/cart.dart';
import 'package:hw4/screens/product_page1.dart';
import 'package:hw4/screens/product_page2.dart';
import 'package:hw4/screens/product_page3.dart';
import 'package:hw4/screens/product_page4.dart';
import 'package:hw4/screens/product_page5.dart';
import 'package:hw4/screens/product_page6.dart';

// HomeScreen class represents the main screen of the application
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// _HomeScreenState class manages the state for the HomeScreen
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffe5e4e4),
        appBar: AppBar(
          actions: [
            // Shopping cart icon in the app bar to navigate to the cart screen
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyCart()));
                },
                icon: const Icon(Icons.shopping_cart_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Products displayed in a row with InkWell for tap gestures
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product 1
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductPage1()));
                        },
                        child: Container(
                          // Container for Product 1 with image, price, name, and brand
                          width: 170,
                          height: 300,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(product1.image),
                                Text(
                                  "£${product1.price}",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product1.name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product1.brand,
                                  style: TextStyle(color: Color(0xffd5d5d5)),
                                ),
                              ]),
                        ),
                      ),
                      
                      // Product 2
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductPage2()));
                        },
                        child: Container(
                          // Container for Product 2 with image, price, name, and brand
                          width: 170,
                          height: 300,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(product2.image),
                                Text(
                                  "£${product2.price}",
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product2.name,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product2.brand,
                                  style: TextStyle(color: Color(0xffd5d5d5)),
                                ),
                              ]),
                        ),
                      ),
                      
                      // Product 3
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductPage3()));
                        },
                        child: Container(
                          // Container for Product 3 with image, price, name, and brand
                          width: 170,
                          height: 300,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(product3.image),
                                Text(
                                  "£${product3.price}",
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product3.name,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product3.brand,
                                  style: TextStyle(color: Color(0xffd5d5d5)),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  
                  // Second column of products
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Product 4
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductPage4()));
                        },
                        child: Container(
                          // Container for Product 4 with image, price, name, and brand
                          width: 170,
                          height: 300,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(product4.image),
                                Text(
                                  "£${product4.price}",
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product4.name,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product4.brand,
                                  style: TextStyle(color: Color(0xffd5d5d5)),
                                ),
                              ]),
                        ),
                      ),
                      
                      // Product 5
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductPage5()));
                        },
                        child: Container(
                          // Container for Product 5 with image, price, name, and brand
                          width: 170,
                          height: 300,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(product5.image),
                                Text(
                                  "£${product5.price}",
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product5.name,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product5.brand,
                                  style: TextStyle(color: Color(0xffd5d5d5)),
                                ),
                              ]),
                        ),
                      ),
                      
                      // Product 6
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductPage6()));
                        },
                        child: Container(
                          // Container for Product 6 with image, price, name, and brand
                          width: 170,
                          height: 300,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(product6.image),
                                Text(
                                  "£${product6.price}",
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  product6.name,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  product6.brand,
                                  style: TextStyle(color: Color(0xffd5d5d5)),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
