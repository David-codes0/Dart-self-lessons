void main(List<String> args) {
  const item = <double>[1,2];
  print(sumList(item));

}

double sumList (List<double> listname) {
  double sum = 0;
  for (var item in listname){
    sum+=item;
  }
  return sum;
}

