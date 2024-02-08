import 'package:flutter/material.dart';
import 'package:hw4/data/cart_list.dart';
import 'package:hw4/data/favourite.dart';
import 'package:hw4/models/product.dart';
import 'package:hw4/screens/cart_screen.dart';
import 'package:hw4/utilities/favourite.dart';
import 'package:input_quantity/input_quantity.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.product});

  final Product product;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int currentQuantity = 1;
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8D4),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartScreen(cartList: cartList)));
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 35,
              ))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400,
              height: 250,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(widget.product.image),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InputQty.int(
                        onQtyChanged: (value) => currentQuantity = value,
                        maxVal: 99,
                        minVal: 1,
                        decoration: const QtyDecorationProps(
                            btnColor: Colors.black,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            contentPadding: EdgeInsets.all(20),
                            minusBtn: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                            plusBtn: Icon(
                              Icons.add,
                              size: 40,
                            )),
                        qtyFormProps: const QtyFormProps(
                            enableTyping: false,
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                      Text(
                        "\$${widget.product.price}",
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "About the product",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                      height: 55,
                      child: Text(
                        "This is one of many original figurines sold by us, shipped to you directly from the brands that make them, this particular figurine is quite special.",
                        overflow: TextOverflow.fade,
                        style: TextStyle(fontSize: 14),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      favourite(isFavourite);
                      setState(() {});
                    },
                    icon: isFavourite
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border),
                    iconSize: 35,
                    color: isFavourite ? Colors.redAccent : null),
                ElevatedButton(
                  onPressed: () {
                    if (cartList.any(
                        (element) => element.name == widget.product.name)) {
                      cartList
                          .firstWhere(
                              (element) => element.name == widget.product.name)
                          .quantity += currentQuantity;
                    } else {
                      widget.product.quantity = currentQuantity;
                      cartList.add(widget.product);
                    }
                    setState(() {});
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffBED1CF)),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.only(left: 60, right: 60))),
                  child: const Text("Add to cart",
                      style: TextStyle(color: Colors.white)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
