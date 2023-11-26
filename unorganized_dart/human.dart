class Human {
  String? name;
  int? age;
  Human({String? name, int? age}) {
    this.name = name;
    this.age = age;
  }
  String getInfo() {
    return '\nName: ${this.name}\nAge: ${this.age}\n';
  }
  int getAge() {
    return this.age!;
  }
}