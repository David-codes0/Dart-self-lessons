// USING GENERICS IN CLASS

class Stack<T>{
  final List<T> _items = [];
// Using a List in a class is a good example of composition 
  void push(T item) => _items.add(item);

  T pop() => _items.removeLast();

}

void main(List<String> args) {
  final stack  = Stack<int>();
try{
stack.push(1);
  stack.push(2);
  stack.push(3);
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
}catch(e){
  print(e);
}
final stack1 = Stack<String>();
  try {
    stack1.push('S1');
    stack1.push('S2');
    stack1.push('S3');
    print(stack1.pop());
    print(stack1.pop());
    print(stack1.pop());
    print(stack1.pop());


   
  } catch (e) {
    print(e);
  }
  
  
}