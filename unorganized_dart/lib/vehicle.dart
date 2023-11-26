class Vehicle {
  static int instanceCount = 0;
  String? _name;
  int? _age;
  Vehicle({required String name, required int age}) {
    Vehicle.instanceCount += 1;
    this._name = name;
    this._age = age;
  }
  String get getInfo {
    return '\nInstance Count: ${Vehicle.instanceCount}\n${this.runtimeType} Name: ${this._name}\n${this.runtimeType} Age: ${this._age}';
  }

  static String iDontKnowWhatStaticMethodToExample() {
    return 'HAHA.. Kasabot ko unsa ang \'static\' nga keyword uy.. Pero wala na koy ma huna-hunaan nga example sa static method.';
  }
}