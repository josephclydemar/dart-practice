import './user.dart';

class Admin extends User {
  String? _department;
  Admin({
    required int id,
    required String firstName,
    required String lastName,
    required int age,
    required String department
    }):super(
      id: id,
      firstName: firstName,
      lastName: lastName,
      age: age
      ) {
    this._department = department;
  }
  Admin.justStrings({
    required String firstName, 
    required String lastName, 
    required String department
    }):super.justStrings(
      firstName: firstName, 
      lastName: lastName
      ) {
    this._department = department;
  }

  @override
  String get getInfo {
    return '${super.getInfo}\n${this.runtimeType} Department: ${this._department}';
  }
}
