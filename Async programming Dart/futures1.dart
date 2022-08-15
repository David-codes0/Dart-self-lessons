Future<String> fetchOrder() => Future.delayed(
  Duration(seconds: 3), () => /*throw Exception('Out of milk')*/ 'Cappucino' 
);




Future<void> main(List<String> args) async {
  try{
  print('program started');
  final order1 = await fetchOrder();
  print(order1);
  final order2 = await fetchOrder();
    print(order2);
  }catch(e){
    print(e);
  }finally{
    print('done');
  }

  // Use Await to wait until a Future completes
  // Use multipple awaits to run Futures in sequence
  // Await is only allowed inside async functions
  // use try/catch to handle exceptions

  // async/await +try/catch is a great way oof working with Futures in Dart

  // much more better than 
  // future.then(...).catchError(...).whenComplete(...)
  
  
}