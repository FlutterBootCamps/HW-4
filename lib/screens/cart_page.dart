import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/models/product.dart';
import 'package:hw4/widgets/item_cart_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  //for compute total for all product
  String computeTotal(){
    double total = 0;

    for(Product product in cartProductList) {
      total += product.price;
    }
    return total.toString();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF525560),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 20,
            color: Colors.white,
          ),
          onPressed: () {Navigator.pop(context);},
        ),
      ),
      backgroundColor: const Color(0xFF525560),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Text("Cart", style: TextStyle(color: Colors.white, fontSize: 30),),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
                child: ListView(
                  children: [
                    //will show all product on the cart, and using item cart widget to show each item of product
                    for(Product product in cartProductList)
                      ItemCartWidget(product: product)
                  ]
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Total:", style: TextStyle(fontSize: 18, color: Colors.white),),
                  Text("SAR ${computeTotal()}", style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),),

                ],
              ),
              const SizedBox(height: 50,),
              //button, when user click to it will clear the list and pop to home page
              MaterialButton(
                onPressed: (){
                  cartProductList.clear();
                  Navigator.pop(context);
                },
                minWidth: double.infinity,
                height: 46,
                color: const Color(0xFFdfceb9),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

