import 'dart:math';

void main() {
  // Random random = new Random();
  // print(random.nextInt(50));
  int minimum = 10;
  int maximum = 60;
  int randInt;
  double randDouble;
  for(int i=0; i<100; i++) {
    randInt = minimum + Random().nextInt(maximum - minimum + 1);
    randDouble = minimum.toDouble() + Random().nextDouble() * (maximum.toDouble() - minimum.toDouble() + 1.0);
    print('RandInt: $randInt RandDouble: $randDouble');
  }
}