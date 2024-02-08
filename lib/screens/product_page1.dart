import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/screens/home_screen.dart';

class ProductPage1 extends StatefulWidget {
  const ProductPage1({super.key});

  @override
  State<ProductPage1> createState() => _ProductPage1State();
}

class _ProductPage1State extends State<ProductPage1> {
  // State variable to track whether the favorite button is clicked or not
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar with a back button leading to the HomeScreen
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            icon: Icon(Icons.west)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product image
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 400,
                  child: Image.network(product1.image),
                ),
                // Product name
                Text(
                  product1.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                // Quantity selection row with add and remove buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(onPressed: (){}, child: Icon(Icons.remove)),
                    Text("01", style: TextStyle(fontSize: 25)),
                    OutlinedButton(onPressed: (){}, child: Icon(Icons.add)),
                    SizedBox(width: 20,),
                    // Product price
                    Text(
                      "£${product1.price}",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                // Product description
                Text(
                  "About the product",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "The Wireless Charging Mouse Pad doubles as both a mouse pad and wireless charger capable of charging at up to 5W for a range of wireless devices. To use this wireless charging mouse pad, simply use the kickstand on the back to prop up the top portion and place your device on its surface. If you want to charge an older iPhone series before iPhone 8, an external wireless charging receiver or receiver case is required. This wireless charging pad works with most plastic phone cases.")
              ],
            )
          ],
        ),
      ),
      // Bottom navigation bar with favorite button and add to cart button
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        // Favorite button
        IconButton(
            onPressed: () {
              setState(() {
                click = !click;
              });
            },
            icon: Icon(
              click ? Icons.favorite_border : Icons.favorite),
            color: click? Colors.red : Colors.red,
        ),
        // Add to cart button
        ElevatedButton(
          child: Text(
            "Add to Cart",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xffe2ceb6)),
        ),
      ]),
    );
  }
}
