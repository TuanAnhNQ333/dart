void main() {
  Person person = Person();
  print(person.name);
//  print(person.majority);
}

class Person{
  String? name;
  int? age;
  String? majority;
  
 Person(this.name,this.age);
  Person({this.name,this.age});
  Person({this.name = "Cuong",this.age =20});
  Person(this.name, this.age, [this.majority = "Computer Engineering"]);
}