// Exception Handling
import 'dart:io';

void main() {
  while(true) {
    int? age;
    try {
      print('Enter your age: ');
      age = int.parse(stdin.readLineSync().toString());
    } catch(err) {
      print('You must enter a number\n$err\n\n');
      continue;
    }
    print('Your age is $age\n\n');
  }
}