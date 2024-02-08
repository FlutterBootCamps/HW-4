import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/screens/home_screen.dart';

class ProductPage6 extends StatefulWidget {
  const ProductPage6({super.key});

  @override
  State<ProductPage6> createState() => _ProductPage6State();
}

class _ProductPage6State extends State<ProductPage6> {
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
                  child: Image.network(product6.image),
                ),
                Text(
                  product6.name,
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
                      "£${product6.price}",
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
                    "This Wireless Temperature Sensor embeds an IR sensor and brings you the commodity of technology: No wires. The sensor can read temperature up to +380°C with a distance of 1 meter using a high technology thermo receptor with an amazing accuracy")
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
