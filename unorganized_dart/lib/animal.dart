class Animal {
  String? _name;
  int? _age;

  String get getName => this._name!;
  int get getAge => this._age!;
  String get getInfo {
    return 'Name: ${this._name}\nAge: ${this._age}';
  }

  set setName(String name) => this._name = name;
  set setAge(int age) => this._age = age;
}