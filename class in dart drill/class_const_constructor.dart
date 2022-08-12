class Complex {
  // Constant constructor

  // note: const are use to declare compile time constant.
  
const Complex(this.re,this.im);

  final double re;
  final double im;
  // Best Practice 
  // Since all your property are immutable 
  // you can have a "const" for your constructor

}

 void main(List<String> args) {
  // this make you create const instances of the class also
  const complex = Complex(2, 5);
  const x = 2;
  const list = [
    Complex(2, 4),
    Complex(2,5,)
  ];
}
