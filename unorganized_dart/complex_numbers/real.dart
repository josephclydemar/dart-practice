class Real {
  late int _real;
  Real({required int real}) {
    this._real = real;
  }
  @override
  String toString() {
    if (this._real > 0 || this._real < 0) {
      return '${this._real}';
    }
    return '';
  }
  int get value {
    return this._real;
  }
}