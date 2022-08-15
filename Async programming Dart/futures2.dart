// Future Methods

// Future.delayed
// Future.error
// Future.value
// 👆👆👆👆 This are the needed ones
// Future.sync
// Future.microtask

Future<String> fetchOrder() => Future.delayed(
  Duration(seconds: 3), () => /*throw Exception('Out of milk')*/ 'Cappucino' 
);


Future<String> fetchOrder1() => Future.value('Only the one');

Future<String> fetchOrder2() => Future.error(Exception('404 error'));




Future<void> main(List<String> args) async {
  try{
  print('program started');
    
  final order1 = await fetchOrder2();
  print(order1);
final order2 = await fetchOrder();
    print(order2);
  }catch(e){
    print(e);
  }finally{
    print('done');
  }
}