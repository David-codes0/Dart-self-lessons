

class Animal {
    void sleep() =>print('Sleep ');

}

// THE SUBCLASSES OF ANIMAL
class Dog extends Animal {
  void cry() => print('bark');
  }

class Cat extends Animal{
  void cry() => print('Meow'); 
}
class CleverDog extends Dog {
  void catchBall() => print('catch ball');
}

void main(List<String> args) {
  CleverDog dog = CleverDog();
  dog.sleep();
  dog.catchBall();
  dog.cry();
  dog.cry();
  Cat cat = Cat();
  print('-----------------');
  cat.sleep();
  cat.cry();
  
}
