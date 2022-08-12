void main() {
  // NULLABLES

  // null safety is enabled here
  // so you can't assign 'null' to a variable
  // solution
  int? a = null;
  // with  NULL Safety Dart tell the null error at compile time
  // instead of run time

  // e.g
  int b = 2;
  // print(a+b);

  // null:(means) no value

  // ASSERTION OPEARATOR (!) : it assign nullable value to non-nullable variable
// e.g
  int x = -1;
  int? maybeValue;
  if (x > 0) {
    maybeValue = x;
  }
  //int value = maybeValue!; 
  
  // if you are sure that nullable variable
  // will always have a non-nullable value, we can use the assertion operator.
  // NOTE: the assertion operator is only used when the vaariable will
  // never lead to null because if it leads you have a run time error.

 

// IF-NULL operator (??): run time error, it is almost like the TENARY OP
//int value = maybeValue == null ? 0 : maybeValue;
int value = maybeValue ?? 0;  // or (maybeValue??=0) <-- this is AUGUMENTED IF-NULL
//When to use ! vs ??
// 1. use ?? if you have a default (or fallback)  value
// 2. use ! if you're sure that your xpression/value won't be null at runtime
  print(value);
}
