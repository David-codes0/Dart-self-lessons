// Mixin can lead to name collison
mixin Mixin1 {
  int foo = 1;
 
}

mixin Mixin2 {
  int foo = 2;
}

class Foo with Mixin1,Mixin2 {
   void foo1() => print('$foo');
}


void main(List<String> args) {
  final foo = Foo();
  foo.foo1();
}