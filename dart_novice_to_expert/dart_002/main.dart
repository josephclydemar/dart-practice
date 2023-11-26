
abstract class Person {
  late final String _name;
  late final int _age;
  late final String _address;
  String get name => this._name;
  int get age => this._age;
  String get address => this._address;
  void talk(Person other) {
    print('I\'m talking to you ${other.name}');
  }
}


abstract class Computer {
  void calculate(int a, int b);
}

abstract interface class Animal {
  void makeNoise();
}

class Student extends Person implements Computer, Animal {
  @override
  late final String _name;

  @override
  late final int _age;

  @override
  late final String _address;

  @override
  String get name => this._name;

  @override
  int get age => this._age;

  @override
  String get address => this._address;

  @override
  void calculate(int a, int b) {
    print('Calculating $a and $b: ${a + b}');
  }

  @override
  void makeNoise() {
    print('AHHHA AHHH...');
  }
}

void main() {
}