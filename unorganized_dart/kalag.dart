class Kalag<T> {
  late int times;
  late List<T> items;
  Kalag(int times, List<T> items) {
    this.times = times;
    this.items = items;
  }

  @override
  String toString() {
    String result = '';
    for(int i=0; i<this.times; i++) {
      result += '(${this.items[i]})\t';
    }
    return result;
  }
}