import 'class_in_dart.dart'; // fdr  BankAccout class 

void main(List<String> args) {
  BankAccount account1 = BankAccount(100 /*, accountHolder: 'David'*/);
 // account1._balance = 1000;  // _balance is private variable and can't be access or modified

print(account1.balance);
  // to make a private variable or method you must add underscore at the front of
  // the variable.
}