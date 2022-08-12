
// SUPER CONSTRUCTOR

class Animal {
  final int age; 

  Animal({required this.age}); // constructor implementation also for the subclasses
  void sleep() => print('Sleep ');
}

// THE SUBCLASSES OF ANIMAL
class Dog extends Animal {
 
  Dog({required super.age}); // added the property from the super class Animal


  void cry() => print('bark');
}

class Cat extends Animal {
  Cat({required super.age}); // added the property from the super class Animal

  void cry() => print('Meow');
}

class CleverDog extends Dog {
  CleverDog({required super.age}); // added the property from the super class Animal

  void catchBall() => print('catch ball');
}
