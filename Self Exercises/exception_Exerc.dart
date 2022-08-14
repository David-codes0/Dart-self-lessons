class EmailAddress {
  final String email;

  EmailAddress(this.email){
    if (email.isEmpty || !email.contains('@')){
      throw FormatException('please provide the right email');
    }else{
      print(email);
    }

   
  }

  void get printEmail => print(email);
}

void main(List<String> args) {
  try{
    //  final email1 = EmailAddress('');
    //   email1.printEmail;
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  }catch (e){
    print(e);

  }
 
}