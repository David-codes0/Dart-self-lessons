class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;

// Andrea Solution
  Point operator +(Point other){
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x * other, y * other);
  }

// My solution

  // String operator +(Object other){ // <-- this is an operator overload: it
  // // allows us to define how operator will work  when it is applied to a new type
  //   if (other is Point){
  //     return 'Point(${x + other.x},${y + other.y})';
  //   }

  //   return '0';
  
  // }
  // String operator *(int other) {
  //   // <-- this is an operator overload: it
  //   // allows us to define how operator will work  when it is applied to a new type

  //     return 'Point(${x * other},${y * other}) ';
    

   
   }


void main(List<String> args) {
  print(Point(1, 1) + Point(2,0));

  print(Point(2, 1) * 5);
}