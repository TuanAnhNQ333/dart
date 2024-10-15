void main() {
//   Person person = Person(name: "Cuong", age: 20, majority: "Computer Engineering");
//   print(person.information);
//   person.name = "";
//   person.age = -5;
//   person.majority = "Software Engineering";
//   print(person.information);
}

class Person{
  String _name;
  int _age;
  String _majority;
  
  Person({required String name, required int age, required String majority})
      : _name = name,
        _age = age,
        _majority = majority;
  String get information => 'Name: $_name, Age: $_age, Major: $_majority';
  
  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    } else {
      print("Age is larger than zero");
    }
  }
  
//   set majority(String newMajority) {
//     if (newMajority.isNotEmpty) {
//       _majority = newMajority;
//     } else {
//       print("Majority isn't empty.");
//     }
//   }
  
//   set name(String newName) {
//     if (newName.isNotEmpty) {
//       _name = newName;
//     } else {
//       print("Name isn't empty");
//     }
//   }
  
}