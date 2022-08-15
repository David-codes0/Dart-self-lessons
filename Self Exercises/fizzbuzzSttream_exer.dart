Stream<String> fizzBuzz() async* {
   for (var i = 1; i <= 15; i++) {
    await Future.delayed(Duration(milliseconds: 1000));
    if (i % 3 == 0 && i % 5 == 0) {
      yield 'fizz buzz';
    } else if (i % 3 == 0) {
      yield 'fizz';
    } else if (i % 5 == 0) {
      yield 'buzz';
    } else {
      yield '$i';
    }
  }
}

Future<void> main(List<String> args)async {
  final streamer = await fizzBuzz();
  await for (var i in streamer){
    print(i);
  }
 
}