class Complex {
  // Default constructor
  const Complex(this.re, this.im);

  // Named Constructor
  // Named arguments give you a more expressive way of creating instances
  // of your classes.

  // Advantage.
  // 1. It make your class easy to be used correctly
  // 2. Harder to use incorrectly.
  Complex.zero()
      : re = 0,
        im = 0;
  Complex.identity()
      : re = 1,
        im = 0;
  Complex.real(this.re) : im = 0;
  Complex.imaginary(this.im) : re = 0;

  final double re;
  final double im;
}

// Example 2 NAMED CONSTRUCTOR and using getters
class Temperature {
  Temperature.celsuis(this.celsuis): farenheit = (celsuis * 1.8)/32;
  Temperature.farenheit(this.farenheit) : celsuis = (farenheit - 32) / 1.8;
  double farenheit;
  double celsuis;

  double get farenheit1 => celsuis * 1.8 + 32;
  void set farenheit1(double farenheit) => celsuis = (farenheit - 32) / 1.8;
  // double farenheit;

}

void main() {
  final zero = Complex.zero();
  final identity = Complex.identity();
  final real = Complex.real(3);
  final imaginary = Complex.imaginary(4);
  print(zero);

  final temp1 = Temperature.celsuis(32.2);
  print(temp1.celsuis);
  print(temp1.farenheit);
  final temp2 = Temperature.farenheit(90);
  temp1.farenheit = 30;
  print(temp1.celsuis);
  print(temp1.farenheit);
  print(temp2.celsuis);
}
