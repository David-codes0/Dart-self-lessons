class Resturant{
  const Resturant({
    required this.name,
    required this.cuisine, 
    required this.rating, 
  });

  final String name;
  final String cuisine;
  final List<double> rating;

  double get totalRating => rating.reduce((value, element) => value + element);
  double get averageRating => rating
  .reduce((value, element) => (value+element)/(rating.length));
  
  
}

void main(List<String> args) {
const orderOne = Resturant(name: 'dane', cuisine: 'fired', rating: [2.3,5,7,8]);
print(orderOne.totalRating);
print(orderOne.averageRating);

}