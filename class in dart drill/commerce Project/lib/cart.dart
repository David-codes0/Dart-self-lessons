import 'items.dart';
import 'product.dart';

class Cart{
  Map<int, Items> _items = {};

  bool get isEmpty => _items.isEmpty;

  void addProduct(Product product){
    final item = _items[product.id];
    if (item == null){
      _items[product.id] = Items(quantity: 1, product: product);
    }
    else{
      _items[product.id] = Items(quantity: item.quantity + 1, product: product);
    }
  }

  double total()=> _items.values
  .map((item)=> item.price)
  .reduce((value, element) => value + element);
  @override
  String toString() {
   if (_items.isEmpty){
    return 'Cart is empty';
   }
   final itemizedList = _items.values.map((item) => item.toString()).join('\n');
   return '$itemizedList \nTotal : \$${total()}';
  }
}