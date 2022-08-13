class Person{
  final String name;
  final int age;

  factory Person.fromJson(Map<String, Object> personDetails){
    final names = personDetails['name'];
    final agePerson = personDetails['age'];
    if (names is String && agePerson is int){
      return Person(names, agePerson);
    }else{
      throw UnsupportedError('Invalid name or age , please input correct value');
    }  
  }

  Map<String, Object> toJson(){
    return {
    'name'  : this.name ,
    'age' : this.age
    };
      }
  Person(this.name, this.age);
}


void main(List<String> args) {
  final person = Person.fromJson({'name': 'Andrea',
  'age' : 36});
  final json = person.toJson();
  print(json.values);

}