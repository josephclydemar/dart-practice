// Constant Constructor
// * A constant constructor is a constructor that creates a constant object

class Student {
  final String name;
  final int age;
  const Student({required this.name, required this.age});
  void getInfo() {
    print('Name: ${this.name}\nAge: ${this.age}\n');
  }
}

void main() {
  const Student s1 = Student(name: 'John', age: 17);
  // s1 = Student(name: 'Kim', age: 19);
  s1.getInfo();
}