// Classes and Objects in Dart
// Modelling Complex Numbers

class Complex {
  int? real;
  int? imaginary;
  Complex(int real, int imaginary) {
    this.real = real;
    this.imaginary = imaginary;
  }

  @override
  String toString() {
    if (this.imaginary == null) return '';
    if (this.imaginary! >= 0) {
      return '${this.real} + ${this.imaginary}i';
    }
    return '${this.real} - ${this.imaginary?.abs()}i';
    }
}

class Employee {
  String? name;
  int? age;
  double? salary;
  Employee(String name, int age, double salary) {
    this.name = name;
    this.age = age;
    this.salary = salary;
  }
  void talk() {
    print('My name is $name, I am $age years old. I earn \$$salary every month.');
  }
}

// class Programmer extends Employee {
//   String? programmingLanguage;
//   String? projectRepository;
//   Programmer(String name, int age, double salary, programmingLanguage, String projectRepository) {
//     this.programmingLanguage = programmingLanguage;
//     this.projectRepository = projectRepository;
//   }
// }

class Point {
  int? x;
  int? y;
  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
}


void main() {
  Complex complex1 = new Complex(-5, 3);
  Complex complex2 = new Complex(-8, -1);
  var complex3 = new Complex(3, -2);
  print(complex1);
  print(complex2);
  print(complex3);
  Employee Employee1 = new Employee('Clyde', 22, 55001.51);
  Employee1.talk();
  var ha = Employee;
  print(ha);
}

