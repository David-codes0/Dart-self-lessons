void main(List<String> args) {
 // GENERICS
 // They are use to write type-safe code in dart and
 //to avoid code duplications
    const list = [1, 2, 4];
    const l2 = [1.0,2.0,4.0];
    // final doubles = list.map((e) => e*2).toList();
    // print(doubles);
    // final doubles = doubleItem(list);
   
    final doublles = transform(list, (x) => x *2);
     print(doublles);
     final squares = transform1(l2, (p0) => p0*p0); // this require transform needs to be generic
     final squares1 = transform2<double,int>(l2, (p0) => p0.round());
     print(squares1);
}
typedef ItemsModifier<T> = T Function (T);

List<R> transform2<T,R>(List<T> items, ItemsModifier modifyX) {
  var result = <R>[];
  for (var x in items) {
    result.add(modifyX(x));
  }
  return result;
}

 List<T> transform1<T>(List<T> items, ItemsModifier modifyX) {
  var result = <T>[];
  for (var x in items) {
    result.add(modifyX(x));
  }
  return result;
}

List<int> transform(List<int> items, ItemsModifier modifyX){
  var result = <int> [];
  for(var x in items){
    result.add(modifyX(x));
  }
  return result;
}


List<int> doubleItem(List<int> items){
  var result = <int>[];
  for(var x in items){
    result.add(x*2);
  }
  return result;
}

