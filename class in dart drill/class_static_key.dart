

class Strings {
  static const welcome = 'Welcome';
  static const signIn = 'Sign in successful';
  static String greetUser(String name) => 'Hi ${name}';


}

void main() {
  print(Strings.welcome);
  print(Strings.signIn);
  print(Strings.greetUser('Jeshua'));

}
// static allow us to define variable and method that belongs to the class


// static variable that can be use outside the class without having to
// create an instance of the class.

// static can also be used with methods too.
