Future<String> fetchOrder() => Future.delayed(
  Duration(seconds: 5), () => /*throw Exception('Out of milk')*/ 'Cappucino' 
);

void main(List<String> args) {
  print('Program Started');
  fetchOrder()
  .then((value) => print(value))
  .catchError((error) => print(error))
  .whenComplete(() => print('first done'));
  print('done...still waiting');

}