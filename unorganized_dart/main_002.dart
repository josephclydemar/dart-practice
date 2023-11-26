// The Dart Compiler has 2 main modes:
// * JIT (Just in Time) -- Hot Reloading
//      - Compiles Dart Code to Bytecode at runtime.
// * AOT (Ahead of Time) -- Publishing Program
//      - Compiles Dart Code to Bytecode before runtime.

int addNums(int a, int b) {
  return a + b;
}

void main() {
  // Functions
  print('\n\nFunctions:');
  print(addNums); // A function declared outside the main
  print(addNums(4, 5));
  Function funny = addNums;
  print(funny);
  print(funny(1, 3));

  int subtractNums(int a, int b) {
    return a - b;
  }
  print(subtractNums); // A function declared inside the main
  Function jokoy = subtractNums;
  print(jokoy);

  dynamic mickeyMouse(Function clubhouse, int x, int y) {
    return 2 * clubhouse(x, y);
  }
  print(mickeyMouse);
  print(mickeyMouse(subtractNums, 5, 7));
  print(mickeyMouse(addNums, 5, 2));

  int add(int x, int y) => x + y;
  int sub(int x, int y) => x - y;

  Function chooseOperation(bool condition) {
    if (condition == true) {
      return add;
    }
    return sub;
  }
  print(chooseOperation);
  print(chooseOperation(true));
  var result1 = chooseOperation(false);
  var result2 = chooseOperation(true)(5, 1);
  print('This is the result1: ${result1(4, 7)}');
  print('This is the result2: ${result2}');

  (int a, int b) { // Anonymous function
    print(a / b);
  }(9, 5);

  List<Function> ops = [add, sub];
  print(ops);

  Function calc1(int b) {
    int c = 1;
    return () => 'This value is ${b + c++}';
  }

  String calc2(int b) {
    int c = 1;
    return (() => 'This value is ${b + c++}')();
  }
  print(calc1);
  print(calc1(3)());
  print(calc1(5)());
  print(calc1(9)());
  print(calc2);
  print(calc2(2));
  print(calc2(4));
  print(calc2(8));

  List<int> filterNums(Function argFunc, List<int> argNums) {
    List<int> result = [];
    for(int i=0; i<argNums.length; i++) {
      if(argFunc(argNums[i])) {
        result.add(argNums[i]);
      }
    }
    return result;
  }
  print(filterNums((int x) => x%2 == 0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]));

  // Dynamic vs Object type
  List<dynamic> haha = [1, '2', 3.5];

  // The base class for all Dart objects except null.
  // Because Object is a root of the non-nullable Dart class hierarchy, every other non-Null Dart class is a subclass of Object.
  // When you define a class, you should consider overriding [toString] to return a string describing an instance of that class. You might also need to define [hashCode] and [operator ==], as described in the Implementing map keys section of the library tour.
  List<Object> huhu = [2, '1', 5.3];
  print(haha);
  print(huhu);
  print('\n\n\n\n');

  ((int x, int y) => x * y)(5, 6); // IIFE in Dart



  // Positional Parameter/Argument & Named Parameter/Argument
  void getInfoWithPositionalParameters(String name, int age, double salary) {
    print('Name: $name');
    print('Age: $age');
    print('Salary: $salary\n');
  }
  void getInfoWithNamedParameters({required name, required int age, double? salary}) { // Question Mark can be removed if 'required' keyword is added.
    print('Name: $name');
    print('Age: $age');
    print('Salary: $salary\n');
  }
  getInfoWithPositionalParameters('Clyde', 22, 25912.35);
  getInfoWithPositionalParameters('Clyde', 22, 25912.35);
  // getInfoWithPositionalParameters(21, 'Kyla', 25912.35); // Error: Incorrect positions of arguments

  getInfoWithNamedParameters(name: 'Joseph', age: 23, salary: 13543.67);
  getInfoWithNamedParameters(age: 21, name: 'Angela', salary: 13543.67); // No Error:


  int operate(int x, int y) {
    int mult(int a, int b) {
      return a * b;
    }
    return mult(x + y, x - y) + mult(x * y , x % y);
  }
  print(operate(41, 5));
}
