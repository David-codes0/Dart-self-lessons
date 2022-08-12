void main() {
  Map<String, dynamic> person = {'name': 'David', 'age': 45, 'level': 2};
  print(person['age']);
  List<String> countries = ['Russia', 'Germany', 'portugal'];
  const num = {1, 2, 3};
  const val = {3, 4};
  print(num.union(val).difference(num.intersection(val)));
  print(countries[0]);

  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
const order = ['margherita', 'pepperoni'];
print(pizzaPrices['margherita']);
  var sum = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null){
    sum += price;}
    else{
      print('no order found');
    }
  }
  print('Total: \$${sum}');
}
