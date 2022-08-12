// ABSTRACT CLASS

// It is use to abstract classes to define an interface that can be
// implemented by subclasses.


import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  final double side;

  Square(this.side);
  @override
  double get area => side * side;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);
  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape){
  print(shape.area);
}

void main(List<String> args) {
  final Shape square =
      Square(5); // you can't declare an instance with the super
  // class name except it is an Abstract Super class

  printArea(square);
  final Shape circle = Circle(2.4);
  printArea(circle);

  final shapes = [
    Square(4),
    Circle(3)
  ];
  shapes.forEach((element)=>printArea(element) );

}
