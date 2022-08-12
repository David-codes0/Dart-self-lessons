void main() {
  const list = [1,2,3,4];
  print(list.reduce((value, element) => value+element));
  // value : 1 3 6 10  
//element : 2 3 4
}