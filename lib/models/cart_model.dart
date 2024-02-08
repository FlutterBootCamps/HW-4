import 'package:hw4/models/product.dart';

class calculate{

late Product product;
late int quantity;

  calculate({
    required this.product,
    required this.quantity,
  });

  // calcoulate price products
  double totalPrice() => product.price * quantity; // calculate products price 

}