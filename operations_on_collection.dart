void main(List<String> args) {
  const list = [1,2,4];

  //  FOREACH


  list.forEach((element) {
// complex logicccccc
    print(element);
  });
  list.forEach((element) => print(element));//passing Anonynous Fuction
  list.forEach((print));
  for(var value in list){
    print(value);
  }

  // MAP

  final doubles = list.map((e) => e * 2).toList();
  print(doubles);
  

}

// Note
// -- Many collection methods return Ietrables
// -- Use .toList() to convert to a List