import './real.dart';
import './imag.dart';

class Complex {
  static int instanceCount = 0;
  late final Real _real;
  late final Imag _imag;
  Complex({int real = 0, int imag = 0}) {
    Complex.instanceCount += 1;
    this._real = Real(real: real);
    this._imag = Imag(imag: imag);
  }

  @override
  String toString() {
    return '${this._real}${this._imag}';
  }
  Real get real {
    return this._real;
  }
  Imag get imag {
    return this._imag;
  }

  Complex operator +(Complex other) {
    return Complex(
      real: this._real.value + other.real.value,
      imag: this._imag.value + other.imag.value
    );
  }

  Complex operator -(Complex other) {
    return Complex(
      real: this._real.value - other.real.value,
      imag: this._imag.value - other.imag.value
    );
  }
  
  // (r1 + i1)(r2 + i2) = r1*r2 + r1*i2 + i1*r2 + i1*i2 = (r1*r2 + -i1*i2) + (r1*i2 + i1*r2)
  Complex operator *(Complex other) {
    return Complex(
      real: (this._real.value * other.real.value) + (-this._imag.value * other.imag.value),
      imag: (this._real.value * other.imag.value) + (this._imag.value * other.real.value)
    );
  }

  @override
  bool operator ==(Object other) {
    if (!(other is Complex)) {
      return false;
    }
    return (this._real.value == other.real.value) && (this._imag.value == other.imag.value);
  }
}



