
import 'dart:io';

import 'all_products.dart';
import 'cart.dart';
import 'product.dart';

void main(List<String> args) {
  final cart = Cart();
  while (true) {
    stdout.write('What is (a)dd item,  (v)iew item, (c)heck out : ');
    final line = stdin.readLineSync();
    if (line == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
    } else if (line == 'v') {
      print(cart);
    } else if (line == 'c') {
      checkout(cart);
      break;

    }
  }
}

Product? chooseProduct() {
  final productsList =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write('Available product:$productsList\nYour choice: ');
  final line = stdin.readLineSync();
  for (var product in allProducts) {
    if (line == product.initials) {
      return product;
    }
  }
  print('product not found');
  return null;
}


bool checkout(Cart cart){
  if (cart.isEmpty){
    print('Cart is Empty 🗑🗑🗑');
    return false;
  }
  final total  = cart.total();
    print('Total: \$${total}');
    stdout.write('Payment in cash(\$): ');
    final line = stdin.readLineSync();
    if (line == null || line.isEmpty){
      return false;
  }
    final paid = double.parse(line);
    if (paid>=total){
      final change = paid - total;
      print('Payment Successful ✅✅✅');
      print('Change: \$${change.toStringAsFixed(2)}');
      
      return true;
    }else{
      print('Not enough cash ❌❌❌');
      return false;
    }
  }

