// EXTENDS AMD IMPLEMENT

abstract class InterfaceA {
  void a(); // This is an  abstract method
// Abstract method doesnt return anything and majorly does not have any implentation
}

abstract class InterfaceB {
  void b(); // This is an  abstract method
}

// You can't 'extend' mutiple class at once but can 'Implements'
class SubClass1 implements InterfaceA,InterfaceB{ 
  @override
  void a() {
    // TODO: implement a
  }

  @override
  void b() {
    // TODO: implement b
  }

}

abstract class Base{
  void foo(); // Abstract method
  void bar() => print('bar'); // Concrete method
}
class Base1{
  // Normal class doesn't take Abstract methods
  void bar() => print('bar'); // Concrete method
}


// Differences btw Extends and Implements
class Subclass2 extends Base{
  @override
  void foo() {
    // TODO: implement foo
  }
}

class Subclass3 implements Base{
  @override
  void bar() {
    // TODO: implement bar
  }
  @override
  void foo() {
    // TODO: implement foo
  }

}

class Subclass4 implements Base1{
  @override
  void bar() {
    // TODO: implement bar
  }

}
// Summary 

// Keyword     type       abstract-methods    concrete-methods
// extends     single       must override       can override
// implements  mutiple     must override        must override


