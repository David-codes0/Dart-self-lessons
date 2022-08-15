Future<void> countDown(int n) async {
    for(var i = n; i >= 0; i--){
    await Future.delayed(Duration(seconds: 2), () => print(i) );
    } 
  } 

  Future<void> main(List<String> args) async {
  await  countDown(3);
  print('done');
}