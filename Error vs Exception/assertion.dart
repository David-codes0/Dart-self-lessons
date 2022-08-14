class PositiveInt {
  final int value;

  const PositiveInt(this.value): assert(value>= 0, 'Value must be positive');

  void get printVale => print(value);
}
void sigIn (String email, String password){
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}
 

void main(List<String> args) {
  // const value = PositiveInt(-1);
  // value.printVale;
  sigIn('', '');
}