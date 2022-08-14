
import 'dart:math';

extension on int {
  List<int> rangeMethod(int value) {
   final  listValue = [this];
      if (this > value){
        return [];
      }
    // var value1 = this;
    //   while (value1 <= value){
    //     listValue.add(value1);
    //     value1++;
    //   }

    for (var i = this+1; i <=value; i++  ){
      listValue.add(i);
    }
    
      return listValue;
  }
}

void main(List<String> args) {
  for (var i in 1.rangeMethod(5)){
    print(i);
  }
}

// e