// Stream Factory constructors

void main(List<String> args) async {
  Stream.fromIterable([1,3,4,5,]); 
  Stream.value(4); //only a single value
  Stream.error(Exception('something is not okay')); // sTream that contain an error
  Stream.empty();
  Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42));
  Stream.periodic(Duration(seconds: 1), (index) => (index));
  final stream = Stream.fromIterable([1,2,3,4]);
  // final value = await  stream.first;
  // print(value);
  // await stream.forEach((element) => print(element));
  final doubles = stream.map((event) => (event * 2)).where((value) => value > 3);
  doubles.forEach((element) => print(element));
  
}

