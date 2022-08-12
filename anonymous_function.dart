typedef Summation = int Function(int, int);
typedef Greet = String Function (String); // Naming a Function type 
typedef String Greeet(String name);
String sayHola(String name) => 'Hola $name'; // Creating an action function inline with the "Greet" type def
String sayBonjour(String name) => "Bonjour $name";

void main (){
// ANONYMOUS FUNCTION
  final sayHi = (String name) => 'Hi $name'; 
  print(sayHi('David'));
 
  welcome(sayBonjour, 'David', summy,5,7);
  

  // to use an anonymous function you have to call it with
  // its argument

}

void  welcome ( String Function(String) greet, String name, Summation addNum, int num1, int num2 ){
  print(greet(name));
  final a = addNum(num1,num2);
  print('Welcome to course number $a ');
}
int summy (int x, int y) => x +y;


