import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';
import 'package:hw4/screens/cart_screen.dart';

class ProductInfo extends StatefulWidget {
  final Product passData;
  
  const ProductInfo({super.key, 
  required this.passData
  });

  @override
  State<ProductInfo> createState() => _ProductInfoState();
  
}

class _ProductInfoState extends State<ProductInfo> {
  bool _like = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // back icon
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new, color: Color.fromARGB(255, 191, 192, 196),), 
        onPressed: (){
          Navigator.pop(context);
        },),
      ),

      // View the selected product in more detail and info 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all( 20),
                padding: const EdgeInsets.symmetric(vertical:20),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30),
                      child: Center(child: Image.network(widget.passData.image, height: 400),)
                      ),
                    const SizedBox( height:15),                    
                    Text(widget.passData.name, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("£${widget.passData.price}", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox( height:10),  
                    const Text("About the product", style: TextStyle(fontWeight: FontWeight.bold),),
                    const SizedBox(height: 8,),
                    Text(widget.passData.description!, style: const TextStyle(fontSize: 14, color: Color(0xffCDCED1)),),                    
                  ],
                ),                
              ),
             ],
             ),
             ),    
            ),

      // Like the produce or add it to the cart
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
              setState(() {
                // change color of like
                  _like = !_like;
                });
            }, icon: Icon(Icons.favorite_border, color: _like ? Colors.red.shade600 : Colors.black38, size: 30 ,),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffE2CEB6), minimumSize: const  Size(200, 45)),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),),);
            },
            child: const Text("Add to cart", style: TextStyle(color: Color(0xff515561), fontWeight: FontWeight.bold),)
            ),
        ],),
      ),

      );
  }
}