// Equality --> To compare instances of class we use the
// equality operator method.

class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;


  @override
  bool operator ==(Object other){ // <-- this is an operator overload: it
  // allows us to define how operator will work  when it is applied to a new type
    if (other is Point){
      return x == other.x && y == other.y;
    }
    return false;
  }
// OR
  // @override
  // bool operator ==(covariant Point other){ 
  //   //  'covariant' is use to change the type of an argument when overriding a method
  //  return x == other.x && y == other.y;
  // }

}





void main(List<String> args) {
  print(Point(0, 0) == Point(0,0));
}