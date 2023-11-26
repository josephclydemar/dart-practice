// Abstract. Interface, Mixins
import 'dart:math';
import 'dart:io';

abstract class Animal {
  String name;
  int age;
  List<double> postion = [0.0, 0.0];
  Animal({required this.name, required this.age});
  List move({required double angle, required double displacement});
  List jump({required double force});
}

class Cat extends Animal {
  Cat(String name, int age) : super(name: name, age: age);
  
  @override
  List move({required double angle, required double displacement}) {
    this.postion[0] += displacement * sin(angle * (3.1416 / 180.0));
    this.postion[1] += displacement * cos(angle * (3.1416 / 180.0));
    return this.postion;
  }

  @override
  List jump({required double force}) {
    return this.postion;
  }
}



interface class Heart {
  int beat() {
    return 1;
  }
}



void main() {

  // Abstract Classes
  Cat c1 = Cat('Johnny', 14);
  String? command;
  double angle;
  double displacement;
  while(true) {
    print('Type QUIT to exit:');
    command = stdin.readLineSync();
    if (command == 'QUIT') {
      break;
    }
    print('Enter angle: ');
    angle = double.parse(stdin.readLineSync()!);
    print('Enter displacement: ');
    displacement = double.parse(stdin.readLineSync()!);

    print(c1.move(angle: angle, displacement: displacement));

    // Interface

  }
}