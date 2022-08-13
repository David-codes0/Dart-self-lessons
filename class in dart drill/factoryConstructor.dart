// Factroy Constructors

// It is use for parsing JSON data. What is Parsing.

// 1. Implement a constructor that doesnt always create a new instance of its class
// 2. Initialize a final variable using logic that can't be handled in the initializer list

// Factory constructor in my own definition It is use for Logical initialization of the instance of a 
// class
import 'dart:math';



abstract class Shape {
  double get area;
  const Shape();
  factory Shape.shapejson(Map<String, Object> json){
    final type = json['type'];
    switch (type) {
       case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('invalid side or missing');
      case 'circle':
      final radius = json['radius'];
      if (radius is double ){
       return Circle(radius);
      }
     throw UnsupportedError('invalid side or missing');
     
        
      default:
      throw UnsupportedError('shape is unsupported');
    }
  }
}

class Square extends Shape {
  final double side;

 const Square(this.side);
  @override
  double get area => side * side;
}

class Circle extends Shape {
  final double radius;

 const Circle(this.radius);
  @override
  double get area => pi * radius * radius;
}
void printArea(Shape shape) {
  print(shape.area);
}

void main(List<String> args) {
  final shapesJ = [
    {
      'type' : 'square',
      'side' : 23.9
    },
    {
      'type' : 'circle',
      'radius': 4.5
    }
  ];

  final shape = shapesJ.map((shapesJ) => Shape.shapejson(shapesJ));
shape.forEach(printArea);

}



