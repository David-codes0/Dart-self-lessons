 // INNER FUNCTION 😅😅😅
 const global = 15;
 void main(List<String> args) {

  const a = 10;
  print(global);
  print(a);
  void foo(int b){
    print(global);
    print(a);
    print(b);
void bar(int c){
  print(global);
      print(a);
      print(b);
      print(c);
}
    bar(4);
  
  }
  foo(5);
 
}
// ARROW 
int sum (int x,int y) => x+y;

void printValue(int x,int y) => print(x+y);