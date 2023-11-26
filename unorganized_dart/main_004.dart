import 'dart:io';

void main() {
  print('Enter your age: ');
  int age = int.parse(stdin.readLineSync().toString());
  print('Enter your test score: ');
  int testScore = int.parse(stdin.readLineSync().toString());
  if (age > 20 && testScore > 500) {
    print('Hired for Programming position..');
  } else {
    print('Rejected for Programming position..');
  }

  if ((age > 15 && testScore > 600) || testScore > 1500) {
    print('Accepted for Mathematics Class..');
  } else if ((age > 12 && testScore > 800) || testScore > 2000) {
    print('Accepted for Engineering Class..');
  } else {
    print('Rejected for Mathematics & Engineering Class..');
  }
  int a = 5;
  switch(a) {
    case 1:
    print('f');
    break;
    default:
    print('dsd');
  }
}