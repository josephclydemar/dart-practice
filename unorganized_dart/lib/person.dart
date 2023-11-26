class Person {
  String? _name;
  int? _age;
  String? _address;
  // // The Constructor I am used to
  // Person(String name, int age, String address) {
  //   this._name = name;
  //   this._age = age;
  //   this._address = address;
  // }

  // // Constructor in 1 line
  // Person(this._name, [this._age = 0, this._address = '']); 

  // Constructor with Named Parameters
  Person({required String name, required int age, required String address}) {
    this._name = name;
    this._age = age;
    this._address = address;
  }
  
  // Getters
  String get getName => this._name!;
  int get getAge => this._age!;
  String get getAddress => this._address!;
  String get getAllInfo {
    return 'Name: ${this._name!}\nAge: ${this._age!}\nAddress: ${this._address!}';
  }

  // Setters
  set setName(String name) => this._name = name;
  set setAge(int age) => this._age = age;
  set setAddress(String address) => this._address = address;
}