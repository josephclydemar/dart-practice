// Object Oriented Programming (OOP) in Dart
import 'lib/person.dart';
// ignore: unused_import
import 'lib/addy.dart';
import 'lib/point.dart';
import 'lib/student.dart';
import 'lib/dog.dart';
import 'lib/animal.dart';
import 'lib/user.dart';
import 'lib/admin.dart';
import 'lib/vehicle.dart';
import 'lib/lend.dart';


// Using Named Constructors
class Addy {
  int? n1;
  int? n2;
  int? n3;
  int? n4;
  Addy(this.n1, this.n2);
  Addy.withNum3(this.n1, this.n2, this.n3);
  Addy.withNum4(this.n1, this.n2, this.n3, this.n4);

  int getSum() {
    if(this.n3 == null) this.n3 = 0;
    if(this.n4 == null) this.n4 = 0;
    return this.n1! + this.n2! + this.n3! + this.n4!;
  }
}







void main() {
  // Person person1 = Person('Joseph', 22, 'Danglag, Consolacion, Cebu');
  Person person1 = Person(name: 'Joseph', age: 23, address: 'Cogon, Inabanga, Bohol');
  print(person1.getName);
  person1.setAge = 14;
  print(person1.getAge);

  // Using Named Constractor  
  Addy addy1 = Addy(4, 2);
  Addy addy2 = Addy.withNum3(3, 1, 5);
  Addy addy3 = Addy.withNum4(1, 2, 4, 3);
  print('\nAddy 1 getSum: ${addy1.getSum()}');
  print('Addy 2 getSum: ${addy2.getSum()}');
  print('Addy 3 getSum: ${addy3.getSum()}');

  // Using Constant Constructor
  Point p1 = const Point(4, 3);
  Point p2 = const Point.withNameParam(x: 2, y: 5);
  print(p1.getCoordinates());
  print(p2.getCoordinates());
  print(p1.x);

  // Encapsulation (encapsulation works in library level not class level)
  print('\nEncapsulation:');
  Student s1 = Student();
  // s1._age = 25;
  // s1._name = 'John';
  // print(s1._age);
  // print(s1._name);
  s1.setAge(25);
  s1.setName('John');
  print('\nName: ${s1.getName()}');
  print('Age: ${s1.getAge()}');
  // s1._studyForExam();
  s1.talkToTeacher();
  print(s1.getSchoolName());

  // Inheritance:
  print('\n\nInheritance:');
  // -> Part 1
  print('-> Part 1:');
  Animal a1 = Animal();
  a1.setName = 'Maki';
  a1.setAge = 11;
  Dog d1 = Dog();
  d1.setName = 'Nami';
  d1.setAge = 2;
  d1.setSprintSpeed = 21;
  print('Dog1 Name: ${d1.getName}');
  print('Dog1 Age: ${d1.getAge}');
  print('Dog1 Speed: ${d1.getSprintSpeed}');
  print('Dog1 Complete Info:\n${d1.getInfo}');

  // -> Part 2
  print('\n-> Part 2:');
  User user1 = User(id: 11, firstName: 'Ivan Jake', lastName: 'Damiles', age: 22);
  User user2 = User.justStrings(firstName: 'Narscent Danny', lastName: 'Aragon');
  print(user1.getInfo);
  user1.login();
  print(user2.getInfo);
  user2.login();
  Admin admin1 = Admin(id: 29, firstName: 'Jailse', lastName: 'Morante', age: 21, department: 'CPE');
  Admin admin2 = Admin.justStrings(firstName: 'Andro Jan', lastName: 'Aropo', department: 'CHE');
  print(admin1.getInfo);
  admin1.login();
  print(admin2.getInfo);
  admin2.login();

  // -> Part 3: Polymorphism
  print('\n-> Part 3: Polymorphism');
  User admin3 = Admin(id: 72, firstName: 'Philip', lastName: 'Anderson', age: 36, department: 'Accounting');
  print(admin3.getInfo);

  // -> Part 4: Static keyword
  print('\n-> Part 4: Static keyword');
  Vehicle v1 = Vehicle(name: 'Lamborgini', age: 17);
  Vehicle v2 = Vehicle(name: 'Boeing', age: 21);
  print('Static Instance Count: ${Vehicle.instanceCount}');
  print(v1.getInfo);
  Vehicle v3 = Vehicle(name: 'FalconX', age: 11);
  print(v2.getInfo);
  print(v3.getInfo);
  // Vehicle.instanceCount = 0;
  Vehicle v4 = Vehicle(name: 'Kawasaki', age: 9);
  print(v4.getInfo);
  print(Vehicle.iDontKnowWhatStaticMethodToExample());


  // -> Part 5: Abstract keyword
  print('\n-> Part 5: Abstract keyword');
  Lend l1 = Lend(principal: 51100.56, duration: 5, rate: 0.12);
  l1.calculate();
  print(l1.getFuture);


  // -> Part 6: Interface keyword
  print('\n-> Part 5: Abstract keyword');
}

