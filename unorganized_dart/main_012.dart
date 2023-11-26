// Modelling Complex numbers
// Operator Overloading

import './complex_numbers/complex.dart';
import './complex_numbers/quaternion.dart';

void main() {
  // Complex c1 = Complex(real: 5, imag: 3);
  // List<Complex> complexNums = [];
  // for(int i=-5; i<=5; i++) {
  //   for(int j=-5; j<=5; j++) {
  //     complexNums.add(Complex(real: i, imag: j));
  //   }
  // }
  // // print(complexNums);
  // for(int i=0; i<complexNums.length; i++) {
  //   print(complexNums[i]);
  // }

  Complex c1 = Complex(real: 5, imag: 3);
  Complex c2 = Complex(real: 2, imag: -6);
  Complex c3 = Complex(real: -7, imag: 4);
  Complex c4 = Complex(real: -13);
  Complex c5 = Complex(real: -13);
  print(c1);
  print(c2);
  print(c1 + c2);
  print(c1 + c3);
  print(c1 - c3);
  print(c1 * c2);
  print((c1 + c2) * (c3 - c4));
  print(c1 == c2);
  print(c1 == c3);
  print(c1 == c4);
  print(c2 == c3);
  print(c4 == c5);

  // Complex c6 = c2 * c4;
  // print(c6);
  // print(Complex.instanceCount);


  Quaternion q1 = Quaternion(real: 5, imagI: 6, imagJ: 2);
  Quaternion q2 = Quaternion(real: 11, imagI: 6, imagJ: -12);
  // Quaternion q3 = Quaternion(real: -13);
  // Quaternion q4 = Quaternion(imagI: 10);
  // Quaternion q5 = Quaternion(real: -1, imagI: -2, imagJ: 3);
  // Quaternion q6 = Quaternion(real: 2, imagI: 8, imagJ: 1);
  // Quaternion q7 = Quaternion(real: -7, imagI: 16, imagJ: 1);
  // Quaternion q8 = Quaternion(real: 9, imagI: -6, imagJ: -5);
  // Quaternion q9 = Quaternion(imagJ: -15);
  // Quaternion q10 = Quaternion(imagJ: 4);
  print(q1 + q2);
}

