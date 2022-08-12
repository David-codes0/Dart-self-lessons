import 'package:equatable/equatable.dart';


// Using Equatable for hashcode 

// We can use 
class Points extends Equatable{

final int x;
final int y;

  Points(this.x, this.y);

  // @override
  // int get hashCode => super.hashCode; // Equatable has taken care of  hashcode for us
  
  @override
  List<Object?> get props => [x,y];

  @override
  bool? get stringify => true;


  
}


void main(List<String> args) {
  print(Points(2, 4));
  print(Points(0,0) == Points(0, 0));
}