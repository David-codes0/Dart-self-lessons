void main() {
  // WHERE METHOD
  const list = [1,2,3,4];
  final even = list.where((element) => element !=2).toList();
  print(even); 
  // use WHERE METHOD to perform filtering operations(no for loop need)

  // FISRTWHERE
  final value = list.firstWhere((element) => element == 3, orElse: () => 5,);
  print(value);
} 

// SUMMARY

//  use 'where' and "firstWhere" to filter and find
// items inside a collection.

// both method returns a boolean value.