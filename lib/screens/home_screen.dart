import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/screens/cart_page.dart';
import 'package:hw4/widgets/card_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Color(0xFFF6F6F6),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CartPage();
              }));
            },
            icon: Icon(Icons.shopping_cart_outlined ,
            color: Color(0xFF8C8C8C),
            size: 35,), // Replace 'some_icon' with the icon you want to use
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column
            (
            children: [
              Row(
                children: [
                  CardWidget(product: productList[0]),
                  SizedBox(
                    width: 17,
                  ),
                  CardWidget(product: productList[1]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CardWidget(product: productList[2]),
                  SizedBox(
                    width: 17,
                  ),
                  CardWidget(product: productList[3]),
                ],
              ),
        
          ],
          ),
        ),
      ), // Replace this with the actual content of your home screen
    );
  }
}
