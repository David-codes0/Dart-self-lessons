import 'product.dart';

class Items{
  final int quantity;
  final Product product;

  Items({ this.quantity = 1,required this.product});

  double get price => quantity * product.price;

  @override
  String toString() {
    return '$quantity x ${product.name} : \$$price';
  }



}