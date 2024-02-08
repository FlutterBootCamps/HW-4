import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';

class CartScreen extends StatelessWidget {
  final List<Product> products;

  const CartScreen({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 80, 85),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 80, 85),
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                Product product = products[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(product.image),
                      radius: 25,
                    ),
                    title: Text(
                      product.name,
                      style: TextStyle(color: Colors.black), 
                    ),
                    subtitle: Text(
                      '\$${product.price}',
                      style: TextStyle(color: Colors.black), 
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 206, 141, 77),
              onPrimary: const Color.fromARGB(255, 0, 0, 0), 
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 92.0), 
              textStyle: TextStyle(fontSize: 20.0), 
            ),
            child: Text('Next'),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

