class Point{
  const Point(this.x, this.y);
  final int x;
  final int y;



  @override
  String toString() => 'Point(${x},${y})';
}

// Every class you create has implementation of  Object.


void main(List<String> args) {
  const point = Point(2, 3);
  print(Point(2, 3)); // or print(Point(2,3).toString());
  print(Point(1, 3));
}

// Summary

// As long as you override toString() in your own classes 
// you will be able to get a human-readable string representation of collections and nested classes

