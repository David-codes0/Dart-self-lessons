// Factroy Constructors

// It is use for parsing JSON data. What is Parsing.

// 1. Implement a constructor that doesnt always create a new instance of its class
// 2. Initialize a final variable using logic that can't be handled in the initializer list


import 'dart:math';


abstract class Shape {
  double get area;
Shape();
   factory Shape.fromJson({required Map<String, Object> json}){
    final type = json['type'];
    switch (type) {
      case 'square' :
        final side = json['side'];
        if (side is double){
          return Square(side);
           
        }
        throw UnsupportedError('invalid or missing side prop');
      
      case 'circle' :
      final radius = json['radius'];
      if (radius is double){
        return Circle(radius);
      }
        throw UnsupportedError('invalid or missing radius prop');
      default: 
      throw UnimplementedError('shhape type not recongnized');
    }
    
  }
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

void printArea(Shape shape) {
  print(shape.area);
}

void main(List<String> args) {
   final shapesJson = [
    {'type': 'square', 'side': 10.5},
    {'type': 'circle', 'radius': 3.4},
  ];
  final shape = shapesJson.map((shape) => Shape.fromJson(json: shape));
  shape.forEach((printArea));
}