

// CASCADE OPERATOR
import 'dart:math';

class ClosedPath {
  List<Point> _point = [];

  void moveTo(Point point){
    _point = [point];
  }

  void lineTo(Point point){
    _point.add(point);
  }
}

void main(List<String> args) {
  final path = ClosedPath();
  path.moveTo(Point(0, 0));
  path.lineTo(Point(2, 0));
  path.lineTo(Point(2, 2));
  path.lineTo(Point(0, 2));
  path.lineTo(Point(0, 0));
  print(path._point);
  // Instead doing the above or writing it that way USE CASCADE OPERATOR

  final path1 = ClosedPath()..moveTo(Point(0, 0))..lineTo(Point(2, 1))..lineTo(Point(2, 2))..lineTo(Point(0, 2))
  ..lineTo(Point(0, 0));

  print(path1._point);
  // Cascade ooperator is just syntactic sugar (makes it easier to call 
  // mulitple methods on the same object)
}