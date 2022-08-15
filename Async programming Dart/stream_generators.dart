Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
    print(value);
  }
  return sum;
}

Future<int> sumStream1(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Stream<int> countStream(int n) async*{
  for(var i =1; i <= n; i++){
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield i;
  }
}
// Iterable and Streams are very similar
// They can be itrated over with a for loop
// They can be created with generator funtions
// They share many methods to process and modify items

// But Iterables are synchrononous and Streams are asynchronous
Iterable<int> count(int n) sync*{
 for(var i =1; i <= n; i++){
    print(i);
    yield i;
  }
}

Future<void> main(List<String> args) async {
  final stream = Stream.fromIterable([1, 2, 3, 4]);
  final sum = await sumStream(stream);
  final stream2 = countStream(8);
  // final sum1 = await sumStream1(stream);
   final sum2 = await sumStream1(stream2);
 
  // print(sum);
  // print(sum1);
  // print(sum2);
}
