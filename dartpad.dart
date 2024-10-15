void main()
{
    Person person = Person(age: 20; name : anh);
    print(person.name);
        print(person.majority);
}
class Person{
    String? name;
    int ? age;
    String? majority;
    // person(this.name, this.age)
    // person({this.name, this.age})
    person({this.name = 'duong', this.age = 20});
}
