// Dart Program in Dart to illustrate
// getters and setters #GFG
class Student {
late String name;
  late int age;

  String get stud_name {
    return name;
  }

  void set stud_name(String name) => this.name = name;
    

  void set stud_age(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get stud_age {
    return age;
  }
}

void main() {
  Student s1 = new Student();
  // s1.stud_name = 'Nitin';
  s1.name = 'David';
  s1.stud_age = 5;
s1.stud_name = 'john';
  print(s1.stud_name);
  print(s1.stud_age);
}
