

void main() {
  var resturants = [
    {
      'name' : 'Pizza Mario',
      'cuisine' : 'Italian',
      'ratings' : [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Nevaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var resturant in resturants){
    var sum = 0.0;
    final ratings = resturant['ratings'] as List<double>;
    for ( var rate in ratings){ 
      sum+=rate;   
    }
   final finalRating = sum/ratings.length;
    resturant['avgRating'] = finalRating;
  }

  print(resturants);
}


