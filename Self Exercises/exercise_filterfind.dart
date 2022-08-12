

void main(List<String> args) {
const list = [1, 2, 3, 4];

final even = fakeWhere(list, (p0) => p0 % 2 != 0);
final results = fakeFirstWhere(list, (p0) => false,elseOr: (() => -1));
print(results);
}

typedef Where<T> = bool Function(T);
typedef OrElse<T> = T Function();

List<T> fakeWhere<T>(List<T> items, Where checker){
  var result = <T>[];
  for (var x in items ){
   if (checker(x) == true){
      result.add(x);
   }
  }
return result;
}
T? fakeFirstWhere<T>(List<T> items, Where checker, {required OrElse elseOr}){
  for (var x in items ){
   if (checker(x) == true){
     return x;
   }
  }
  return elseOr();

}