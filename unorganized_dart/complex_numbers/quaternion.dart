import './complex.dart';
import './real.dart';
import './imag.dart';


class Quaternion {
  late final Complex _complex;
  late final Imag _imagJ;
  Quaternion({int real = 0, int imagI = 0, int imagJ = 0}) {
    this._complex = Complex(real: real, imag: imagI);
    this._imagJ = Imag(imag: imagJ, type: 'j');
  }

  String toString() {
    return '${this._complex.toString()}${this._imagJ}';
  }
  
  Real get real {
    return this._complex.real;
  }
  Imag get imagI {
    return this._complex.imag;
  }
  Imag get imagJ {
    return this._imagJ;
  }

  Quaternion operator +(Quaternion other) {
    return Quaternion(
      real: this.real.value + other.real.value,
      imagI: this.imagI.value + other.imagI.value,
      imagJ: this.imagJ.value + other.imagJ.value
    );
  }

  Quaternion operator -(Quaternion other) {
    return Quaternion(
      real: this.real.value - other.real.value,
      imagI: this.imagI.value - other.imagI.value,
      imagJ: this.imagJ.value - other.imagJ.value
    );
  }
  
  // // (r1 + i1 + j1)(r2 + i2 + j2)    =    r1*r2 + r1*i2 + r1*j2   +   i1*r2 + i1*i2 + i1*j2   +   j1*r2 + j1*i2 + j1*j2
  // Complex operator *(Complex other) {
  //   return Complex(
  //     real: (this._real.value * other.real.value) + (-this._imag.value * other.imag.value),
  //     imag: (this._real.value * other.imag.value) + (this._imag.value * other.real.value)
  //   );
  // }

  @override
  bool operator ==(Object other) {
    if (!(other is Quaternion)) {
      return false;
    }
    return (this.real.value == other.real.value)
    && (this.imagI.value == other.imagI.value)
    && (this._imagJ.value == other.imagI.value);
  }
}
