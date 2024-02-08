import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';

class MyCart extends StatefulWidget {
  MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold for the Cart screen
      backgroundColor: Color(0xff535362),
      appBar: AppBar(
        // AppBar with a dark background for the Cart screen
        backgroundColor: Color(0xff535362),
        title: Text(
          "Cart",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          // List of items in the cart
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  // Cart item 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // Product image for Cart item 1
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://i.pinimg.com/736x/c5/61/e7/c561e7f2c40fccb8c8fc0f5349a1ff95.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "x1",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        product2.name,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        "£${product2.price}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  // Cart item 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // Product image for Cart item 2
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://i.pinimg.com/736x/b0/c7/a3/b0c7a33beffa5066b50df0bd6eae52fa.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "x1",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        product4.name,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        "£${product4.price}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  // Cart item 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // Product image for Cart item 3
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://i.pinimg.com/736x/bd/99/be/bd99be613b94916387e8719993dde9a3.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "x1",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        product6.name,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        "£${product6.price}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 475,
          ),
          // Total price of items in the cart
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(
                "3120",
                style: TextStyle(fontSize: 30, color: Colors.white),
              )
            ],
          )
        ]),
      ),
      // Bottom navigation bar with a button to proceed to the next step
      bottomNavigationBar: ElevatedButton(
        child: Text(
          'Next',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Color(0xffe2ceb6)),
      ),
    );
  }
}
