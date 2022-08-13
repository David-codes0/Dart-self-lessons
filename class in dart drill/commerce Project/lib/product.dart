class Product{
  final int id;
  final String name;
  final double price;

 const Product({required this.id,required this.name,required this.price});
 String get displayName => '\n(${initials})${name.substring(1)} \$$price';
 String get initials => name.substring(0,1);

}