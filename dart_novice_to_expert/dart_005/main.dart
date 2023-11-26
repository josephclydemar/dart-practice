// * Singleton Class
// * Factory Constructor









// Using Constant Constructor

class Area {
  final double length;
  final double breadth;
  final double area;

  const Area._internal(this.length, this.breadth) : this.area = length * breadth;
  factory Area(double length, double breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception('Length and Breadth must not be negative...');
    }
    return Area._internal(length, breadth);
  }

  void getInfo() {
    print('Area: ${this.area}');
  }
}


// Factory Constructor
class Person {
  String firstname;
  String lastname;
  Person(this.firstname, this.lastname);

  factory Person.fromMap(Map<String, String> map) {
    return Person(map['firstname'] as String, map['lastname'] as String);
  }
  void getInfo() {
    print('\nFirst Name: ${this.firstname}\nLast Name: ${this.lastname}\n');
  }
}


enum ShapeType {
  circle,
  rectangle,
  ellipse
}

abstract class Shape {
  const Shape.hah();
  factory Shape(ShapeType st) {
    if(st == ShapeType.circle) {
      return Circle();
    } else if(st == ShapeType.ellipse) {
      return Ellipse();
    }
    return Rectangle();
  }
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print('Drawing Circle');
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('Drawing Rectangle');
  }
}

class Ellipse extends Shape {
  Ellipse() : super.hah();
  @override
  void draw() {
    print('Drawing Ellipse');
  }
}






// * Third Example
// * Ensuring that Human instances are never doubly instantiated
class Human {
  final String name;
  Human._internal(this.name); // Private Constructor

  static final Map<String, Human> _cached = <String, Human>{};

  factory Human(String name) {
    if (Human._cached.containsKey(name)) {
      return Human._cached[name]!;
    }
    final Human newHuman = Human._internal(name);
    Human._cached[name] = newHuman;
    return newHuman;
  }

  void getInfo() {
    print('My name is ${this.name}, I\'m a ${this.runtimeType} and my hashcode is [${this.hashCode}]');
  }
}




// * Signleton Class: Only has one instance
// * Using a factory constructor
class Student {
  final String name;
  final int age;
  final String course;

  Student._internal(this.name, this.age, this.course);
  static late final Student _instance;
  factory Student({required String name, required int age, required String course}) {
    Student._instance = Student._internal(name, age, course);
    return Student._instance;
  }
  void getInfo() {
    print('\nName: ${this.name}\nAge: ${this.age}\nCourse: ${this.course}\nType: ${this.runtimeType}\nHashCode: ${this.hashCode}\n');
  }
}


void main() {
  Area a1 = Area(5.2, 3.44);
  Area a2 = Area(11.3, 2.2);
  a1.getInfo();
  a2.getInfo();
  Area a3;
  try {
    a3 = Area(-1, 4);
    a3.getInfo();
  }
  catch (err) {
    print(err);
  }

  Person p1 = Person('Ken', 'Suson');
  Person p2 = Person.fromMap({
    'firstname': 'John',
    'lastname': 'Smith'
  });
  p1.getInfo();
  p2.getInfo();


  Shape s1 = Shape(ShapeType.rectangle);
  Shape s2 = Shape(ShapeType.ellipse);
  print(s1);
  s1.draw();
  s2.draw();

  Map<int, String> m = {
    1: 'John',
    2: 'Kim'
  };
  print(m);

  Human h1 = Human('Julius');
  Human h2 = Human('Kevin');
  Human h3 = Human('Jose');
  Human h4 = Human('Roger');
  Human h5 = Human('Jose');
  Human h6 = Human('Kevin');
  Human h7 = Human('Julius');
  Human h8 = Human('Roger');
  h1.getInfo();
  h2.getInfo();
  h3.getInfo();
  h4.getInfo();
  h5.getInfo();
  h6.getInfo();
  h7.getInfo();
  h8.getInfo();

  Student st5 = Student(name: 'Tim', age: 18, course: 'BSCS');
  // Student st6 = Student(name: 'George', age: 18, course: 'BSCPE');
  // Student st7 = Student(name: 'Luffy', age: 18, course: 'BSME');
  // Student st8 = Student(name: 'Goku', age: 18, course: 'BSEE');
  st5.getInfo();
  // st6.getInfo();
  // st7.getInfo();
  // st8.getInfo();
}


