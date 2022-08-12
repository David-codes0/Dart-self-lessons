import 'dart:math';

abstract class Shape {
  double get area;
  double get  perimeter;
  void printValue(){
    print(' Perimeter: ${perimeter}, Area: ${area} ');
  }
}

class Square extends Shape {
  final double side;

  Square(this.side);
  @override
  double get area => side * side;
  
  @override

  double get perimeter => 4 * side;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);
  @override
  double get area => pi * radius * radius;
  
  @override
  double get perimeter => 2 * pi * radius;
}

void printValue(Shape shape){
  print(' Perimeter: ${shape.perimeter}, Area: ${shape.area} ');
}

void main(List<String> args) {
  final Shape square =
      Square(5); // you can't declare an instance with the super
  // class name except it is an Abstract Super class

  printValue(square);
  final Shape circle = Circle(2.4);
  printValue(circle);

  final shapes = [Square(4), Circle(3)];
  shapes.forEach((element) => printValue(element));
  // OR
  shapes.forEach((element) => element.printValue()); // From the abstract class itself
}


