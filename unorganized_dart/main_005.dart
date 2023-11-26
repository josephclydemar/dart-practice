void main() {
  void displayHello() {
    print('Hello');
  }
  displayHello();
  int age = 34;
  assert(age > 6, throw Exception('Not Equal'));
}