Future<int> sumStream (Stream<int> stream) async{
  var sum = 0;
 await for (var value in stream){
    sum+=value;
  }
  return sum;
}
Future<int> sumStream1 (Stream<int> stream) => stream.reduce((previous, element) => previous+element);

Future<void> main(List<String> args) async{
  final stream = Stream.fromIterable([1,2,3,4]);
 await for (var i in stream){
  await Future.delayed(Duration(seconds: 1));
  print(i);
 }
  // final sum = await sumStream(stream);
    final sum1 = await sumStream1(stream);
  // print(sum);
  print(sum1);
} 