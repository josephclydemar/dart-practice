// User Input
import 'dart:io';

void main() {
  print('Enter your name: ');
  String? name = stdin.readLineSync();
  print('Enter your age: ');
  int age = int.parse(stdin.readLineSync().toString());
  print('Enter your salary: ');
  double salary = double.parse(stdin.readLineSync().toString());
  print('Your name is $name');
  print('Your age is $age');
  print('Your salary is P$salary');
}