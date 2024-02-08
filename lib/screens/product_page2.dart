import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/screens/home_screen.dart';

class ProductPage2 extends StatefulWidget {
  const ProductPage2({super.key});

  @override
  State<ProductPage2> createState() => _ProductPage6State();
}



class _ProductPage6State extends State<ProductPage2> {
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
                  child: Image.network(product2.image),
                ),
                Text(
                  product2.name,
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
                      "£${product2.price}",
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
                    "Echo Plus has a built-in Zigbee hub to easily setup and control your compatible smart home devices, and an improved sound for streaming music. These premium speakers are powered by Dolby play 360° audio with crisp vocals and dynamic bass response. You can also use your voice to adjust equalizer settings.")
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
          icon: Icon(click ? Icons.favorite_border : Icons.favorite),
          color: click ? Colors.red : Colors.red,
        ),
        ElevatedButton(
          child: Text(
            "Add to card",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xffe2ceb6)),
        ),
      ]),
    );
  }
}
