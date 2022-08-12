// METHOD OVERIDES
// overides are use to replace implementation of a method in the 
// super class with a more specialized version
class Animal {
  void sleep() => print('Sleep ');
}

// THE SUBCLASSES OF ANIMAL
class Dog extends Animal {
  void cry() => print('bark');
 @override // this is an overide of the method sleep in the Animal Class
  void sleep() {
    super.sleep(); // get to do what the super class method does and more
    print('Sleep more'); // the addition action
  
  }
}

class Cat extends Animal {
  void cry() => print('Meow');
}

class CleverDog extends Dog {
  void catchBall() => print('catch ball');
}

void main(List<String> args) {
  Dog dog = Dog();

  dog.sleep();
}
