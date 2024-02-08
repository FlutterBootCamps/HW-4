import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/screens/home_screen.dart';

class ProductPage3 extends StatefulWidget {
  const ProductPage3({super.key});

  @override
  State<ProductPage3> createState() => _ProductPage3State();
}


class _ProductPage3State extends State<ProductPage3> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffe5e4e4),
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
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 400,
                  child: Image.network(product3.image),
                ),
                Text(
                  product3.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(onPressed: (){}, child: Icon(Icons.remove)),
                    Text("01", style: TextStyle(fontSize: 25)),
                    OutlinedButton(onPressed: (){}, child: Icon(Icons.add)),
                    SizedBox(width: 20,),
                     Text(
                      "£${product3.price}",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Text(
                  "About the prouduct",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    " provide wireless control of your lights and appliances. No subscription or hub is required: simply plug Wemo Mini into an electrical outlet, connect a device to the Smart Plug, and wirelessly control your device using a tablet or phone.")
              ],
            )
          ],
        ),
      ),

      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
            ElevatedButton(
      child: Text(
              "Add to card",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Color(0xffe2ceb6)),
),
      ]),
    );
  }
}
