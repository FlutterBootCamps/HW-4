import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/models/product.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  //bool for check if user click to favorite icon
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 20,
            color: Color(0xFF4D525E),
          ),
          onPressed: () {Navigator.pop(context);},
        ),
      ),
      body: Padding(
        //padding from left and right
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.product.image,
              // to take all width
              width: double.infinity,
              height: 250,
            ),
            Text(
              widget.product.name,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "SAR " + widget.product.price.toString(),
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "About the product",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  widget.product.description,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(isFavorite
                        ? Icons.favorite // when favorite is false it will be outline
                        : Icons.favorite_border_outlined , color: Colors.red,)),// when its true it will be fill color
                const SizedBox(width: 30,),
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      cartProductList.add(widget.product); // to add this product to cartProductList
                      Navigator.pop(context); // return to home page
                    },
                    height: 46,
                    color: const Color(0xFFdfceb9),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: const Text("Add Cart"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,)

          ],
        ),
      ),
    );
  }
}
