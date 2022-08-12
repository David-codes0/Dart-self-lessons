void main(List<String> args) {
  sayhi();
  final name = 'Lucy';
  final age = 34;
  describe(name, age);
  describe('Samson', 38);
  final person = describe1('Joseph', 15);
  print(person);
  foo(); // this is not a pure function
  foo();
  foo();
  }

  void sayhi(){
    print('hi');
    print('Welcome');
  }

  void describe(String name, int age) {
    print('My name is $name. I\'m $age years old');
  }

  // This is a good function it return 
  String describe1 (String name, int age){
    return 'My name is $name. I\'m $age years old';
  }

  // A PURE FUNCTION: 
  // always produces the same result when called with same arguments
  // doesn't mutate any variables outside its own scope

  // e.g
  var counter = 1;
  void foo() { // this is not a pure function 
    print('*' * counter);
    counter++;
  }

// Dont ever declare a global variable and use it in a 
// declared function  where it value change it is called GLOBAL MUTATION 
// you will cry😂