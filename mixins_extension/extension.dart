
extension on String {
  int? toIntOrNull() => int.tryParse(this);
}  
// Use Named extension to be able to use them in other files by import
void main(List<String> args) {
  print(int.tryParse('1234'));
  print('890'.toIntOrNull());
  
} 