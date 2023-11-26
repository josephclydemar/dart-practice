import './animal.dart';

class Dog extends Animal {
  int? _sprintSpeed;

  @override
  String get getInfo {
    return '${super.getInfo}\nSprint Speed: ${this._sprintSpeed}';
  }

  int get getSprintSpeed => this._sprintSpeed!;
  
  set setSprintSpeed(int speed) => this._sprintSpeed = speed;
}