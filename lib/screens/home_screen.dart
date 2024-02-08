import 'package:flutter/material.dart';
import 'package:hw4/data/product_container.dart';
import 'package:hw4/models/product.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/screens/prodect_info_screen.dart';
import 'package:hw4/screens/cart_screen.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to the CartScreen when cart icon is clicked
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  CartScreen(products: [],)),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      navigateToProductInfoScreen(context, productList[0]);
                    },
                    child: ProductContainer(productList[0]),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      navigateToProductInfoScreen(context, productList[1]);
                    },
                    child: ProductContainer(productList[1]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      navigateToProductInfoScreen(context, productList[2]);
                    },
                    child: ProductContainer(productList[2]),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      navigateToProductInfoScreen(context, productList[3]);
                    },
                    child: ProductContainer(productList[3]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Navigate to the ProductInfoPage
  void navigateToProductInfoScreen(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductInfoPage(product: product),
      ),
    );
  }
}
