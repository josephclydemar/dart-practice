// * Generics


// Generic Classes
class Data<T> {
  late final T element;
  Data(this.element);
  T getElement() {
    return this.element;
  }
}


// Generic Functions
T genFunc<T>(T value) {
  return value;
} 


void main() {
  Data<String> d1 = Data<String>('Hello');
  Data<Data<int>> d2 = Data<Data<int>>(Data<int>(5));
  print(d1.getElement());
  print(d2.getElement().getElement());
  List<Function> l1 = [
    (int a, int b) => a * b, 
    (int a, int b) => a + b
    ];
  print(l1);
}