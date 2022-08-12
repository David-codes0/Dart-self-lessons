void main() {
  const cities = <String?>['London', 'Paris', null];
  for (var city in cities){
    if (city != null){
    print(city.toUpperCase());
    }
   // Another method
  print(city?.toUpperCase()); // This is the CONDITIONAL ACCESS OPERATOR
  }
}