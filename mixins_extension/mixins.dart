// We can use mixins to share functionality in
// mutiple classses without code duplication
mixin Breathing {
void breathe() => print('breathing');
}


mixin Swimming{
  void swim() => print('Swimming');
}

class Animals with Breathing {
  
}

class Fish extends Animals with Swimming{

}

class Human extends Animals with Swimming{

}



void main(List<String> args) {
  final fish = Fish();
  fish.breathe();
  fish.swim();
  final human = Human();
  human.swim();
  human.breathe();
  
}

// In dart any class can be added as a mixin to
// another class (using the with keyword)



// Mixins are good for defining behaviours (or capabilities)
// classes can inherit those behaviors in a mmore maintainabke way

// Mixins lead to 'shallow' class hierarchies (this is a good thing)

// Single inheritance (extends) leads to deep class hierarchies
// (making the code harder to maintain)

// Should mixins be declared as mixin or class?

// Mixins can't be instantiated
// Mixins can't have constructors