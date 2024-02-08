import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:const Color(0xff515561),
      // appBar: AppBar(),
      body: SafeArea(
        child:
         Column(children: [
          // Title of page
            Container(
              margin: const EdgeInsets.only(top:30, left:40),
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Cart", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30, )
                  ),
                ],
              ),
            ),

            // Shopping cart list
            Container(
              margin: const EdgeInsets.all( 20),
              padding: const EdgeInsets.symmetric(vertical:20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container( 
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    ),
                  child:
                    ClipOval(child: 
                    SizedBox.fromSize( size : const Size.fromRadius(30),
                      child: Image.asset("asset/h30i.png", fit: BoxFit.cover),
                      ),
                    ),
                    ),
                  const Text('Soundcore', style : TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold )),
                  const Text('2200', style : TextStyle(color: Colors.white, fontSize: 18, )),
                ],
              ),
            ),

            const SizedBox(height: 6),

            Container(
              margin: const EdgeInsets.all( 20),
              padding: const EdgeInsets.symmetric(vertical:20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container( 
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    ),
                  child:
                    ClipOval(child: 
                    SizedBox.fromSize( size : const Size.fromRadius(30),
                      child: Image.network("https://m.media-amazon.com/images/I/71qj1EgsEzL._AC_SX679_.jpg",fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const Text('Tensky', style : TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold )),
                  const Text('540', style : TextStyle(color: Colors.white, fontSize: 18, )),
                ],
              ),
            ),

            const SizedBox(height: 6),
            Container(
              margin: const EdgeInsets.all( 20),
              padding: const EdgeInsets.symmetric(vertical:20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container( 
                    decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    ),
                  child:
                    ClipOval(child: 
                    SizedBox.fromSize( size : const Size.fromRadius(30),
                      child: Image.network("https://m.media-amazon.com/images/I/71TrxGfNn-L._AC_SX679_.jpg",fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const Text('HUAWEI', style : TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold )),
                  const Text('6700', style : TextStyle(color: Colors.white, fontSize: 18, )),
                ],
              ),
            ), 
            
            const SizedBox(height: 85),

          // Cart total price 
            Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Container(     
                  margin: const EdgeInsets.all( 20),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total:", style: TextStyle(color: Color(0xffE2CEB6), fontSize: 20),),
                      Text("£ 9440", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 35),)
                  ],),
                ],
              ),
            ),
                
          const SizedBox(height: 15),
                
          Center(            
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffE2CEB6), minimumSize: const Size(250, 55)),
              onPressed: (){}, 
              child: const Text("Next", style: TextStyle(color: Color(0xff515561), fontWeight: FontWeight.bold, fontSize: 25),), 
            ),
          ),
                ],),
              ),         
          ],
        ),
      ),

      // bottomNavigationBar: 
    );
  }
}