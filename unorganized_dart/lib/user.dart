class User {
  int? _id;
  String? _firstName;
  String? _lastName;
  int? _age;
  User({
    required int id,
    required String firstName,
    required String lastName,
    required int age
    }) {
    this._id = id;
    this._firstName = firstName;
    this._lastName = lastName;
    this._age = age;
  }
  User.justStrings({required String firstName, required String lastName}){
    this._id = 0;
    this._firstName = firstName;
    this._lastName = lastName;
    this._age = 10;
  }
  String get getInfo {
    return '\n${this.runtimeType} ID: ${this._id}\n${this.runtimeType} First Name: ${this._firstName}\n${this.runtimeType} Last Name: ${this._lastName}\n${this.runtimeType} Age: ${this._age}';
  }
  void login() {
    print('${this.runtimeType} ${this._firstName} Logged-In to the System');
  }
  void logout() {
    print('${this.runtimeType} ${this._firstName} Logged-Out of the System');
  }
}