class Imag {
  late int _imag;
  late String _type;
  Imag({required int imag, String type = 'i'}) {
    this._imag = imag;
    this._type = type;
  }
  @override
  String toString() {
    if (this._imag > 1 || this._imag < -1) {
      if (this._imag > 0) {
        return '+${this._imag}${this._type}';
      }
      return '${this._imag}${this._type}';
    }
    else if(this._imag == 1 || this._imag == -1) {
      if (this._imag < 0) {
        return '-${this._type}';
      }
      return '+${this._type}';
    }
    return '';
  }

  int get value {
    return this._imag;
  }
}