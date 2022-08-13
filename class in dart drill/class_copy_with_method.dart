class Credentials {
  final String email;
  final String password;

 const Credentials({this.email = '', this.password = ''});

  Credentials copyWith ({
    String? email,
    String? password
  }){
    return Credentials(
      email: email ?? this.email, 
      password: password ?? this.password
      );
  }

  @override
  String toString() => 'Credential : $email, $password';

}


void main(List<String> args) {
  const credential = Credentials();

  final update1 = credential.copyWith(email: 'mdf@gmail.com');
  print(update1);
  final update2 = update1.copyWith(password:'too-easy');
  print(update2);
}
//SUMMARY 
// if you need copy behaviour in your immutable classes, create a copy-with method
// copyWith is convenient: Set the properties that you want, omit the others(via named arguments)