import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/screens/cart_screen.dart';
import 'package:hw4/screens/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key
  });

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        elevation: 0,
        actions: [ 
          Container(
            padding:const EdgeInsets.only(right: 20, top:20),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, size: 30, color: Color(0xffA1A1A1),),
               onPressed: (){ Navigator.push(context, MaterialPageRoute(
                builder: (context) => const Cart()));},  
              ),
              ),
          // ), 
          ]
        ), // action button in the right side of the appbar
      
      // View list of products
      body:  SafeArea(
          child: GridView.count(             
             padding: const EdgeInsets.all(30),
             crossAxisCount: 2,
             crossAxisSpacing: 15,
             mainAxisSpacing: 15,
             childAspectRatio: (1 / 1.8),
             
            //  Dispaly All the product in list
             children: List.generate(productList.length, (index){
              return  
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfo(
                    passData:  productList[index], 
                     ),),);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(      
                      mainAxisAlignment: MainAxisAlignment.center,              
                      crossAxisAlignment: CrossAxisAlignment.start,
                
                      children: [
                          Center(child:
                          Image.network(productList[index].image, height: 100,)
                          ),
                          const SizedBox(height: 30),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:[ Text("£${productList[index].price.toString()}", style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              ),
                            ),
                            ],
                          ),
                          const SizedBox(height: 6,),
                          Text(productList[index].name, style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 6,),
                          Text(productList[index].brand, style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 228, 225, 225),
                            ),
                          ),
                        ],
                      ) ,
                ),
              );
             }),
          ),
      ),
    );
  }
}
