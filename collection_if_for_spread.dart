void main() {
  const bananas = 5;
  const apples = 6;
  const grains  = {
    'pasta' : '500g',
    'rice' : '1kg',
  };

  const addGrains = true;
  var shoppingList = <String,dynamic>{
     
    if (bananas > 0 && apples > 0)
      'bananas' : bananas,
      'apple' : apples,
    if(addGrains) ...grains,
   
  };

  
  // if (apples > 0) {
  //   shoppingList['apples'] = apples;
  // };
  if (addGrains) {
    shoppingList
    .addAll(grains);
  };

  print(shoppingList);


}