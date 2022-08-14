class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }
  final int numerator;
  final int denominator;
  double get value => numerator / denominator;
}

void testFraction() {
  try {
    final f = Fraction(3, 0);
    print(f.value);
  } on IntegerDivisionByZeroException catch (e) {
    // on is use to catch specific kinds of errors;
    print(e);
    rethrow;
  } on Exception catch (e) {
    print(e);
  } finally {
    print('On all am still done'); // this will run wether try is succesful or catch is successful
  }
}

void main(List<String> args) {
  try {
    testFraction();
  } catch (e) {
    print(e);
  }

  print('done');
}
