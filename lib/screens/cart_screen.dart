import 'package:flutter/material.dart';
import 'package:hw4/components/cart_item.dart';
import 'package:hw4/data/cart_list.dart';
import 'package:hw4/models/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.cartList});

  final List<Product> cartList;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  void initState() {
    double sum = 0;
    for(var item in widget.cartList){
      sum += item.price * item.quantity;
    }
    sumOfProducts = sum;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F2544),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 22, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 25)),
        backgroundColor: const Color(0xff1F2544),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 400,
                    height: 500,
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(widget.cartList.length,
                            (index) => CartItem(product: widget.cartList[index])),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Total:",
                            style: TextStyle(fontSize: 32, color: Colors.white),
                          ),
                          Text(
                            "\$$sumOfProducts",
                            style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xffBED1CF)),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.only(left: 80, right: 80))),
                        child: const Text("Next",
                            style: TextStyle(color: Colors.white)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
