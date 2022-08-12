// Creating a class for Person with property age , name, height


class Person{
  Person({
    required this.name, 
    required this.age, 
    required this.height
   });

  final String name;
  final int age;
  final  double height;

  void printDescription(){
    print('my name is ${this.name}. i\'m ${this.age} years old, i\'m ${this.height} meters tall.');
}
}

void main() {
  Person person1 = Person(name: "Adebayo David", age: 23, height: 1.8);
  person1.printDescription();
  Person person2 = Person(name: "Adebayo mary", age: 28, height:2.8);
  person2.printDescription();
}


// REMEMBER CLASS DESIGN IS TYPE DESIGN !!!!!!!