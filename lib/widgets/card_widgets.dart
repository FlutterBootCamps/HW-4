import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';
import 'package:hw4/screens/product_page.dart';


//
class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        //will navigate to product page to show details
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProductPage(
              product: product,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: 280,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        product.image,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "SAR ${product.price}",
                      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      product.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                Text(
                  product.brand,
                  style: const TextStyle(color: Color(0xFFAFABAB)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
