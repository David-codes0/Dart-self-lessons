

class BankAccount {
  double _balance;
//  final String accountHolder; 
 // String accountHolder; // making accountHolder immutable with "final" keyword
  BankAccount(this._balance, /*required this.accountHolder}*/);
  double get balance => _balance;

  void deposit(double amount){
    this._balance +=amount;
  }
  bool withdraw(double amount){
    if (_balance < amount){
      return false;
    }
    this._balance -= amount;
    return true;
  }
}

void main() {
  BankAccount account1 = BankAccount(100 /*, accountHolder: 'David'*/);
  account1._balance = 1000;
  account1.deposit(100);
  account1.withdraw(50);
  print(account1._balance);
  
}