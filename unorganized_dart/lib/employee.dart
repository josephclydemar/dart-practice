class Employee {
  int? _id;
  Employee(int id) {
    this._id = id;
  }
  int get getId => this._id!; // Another way of making a getter method.
  // int getId() {
  //   return this._id!;
  // }

  set setId(int id) => this._id = id; // Another way of making a setter method.
  // void setId(int id) {
  //   this._id = id;
  // }
}

void main() {
  Employee e1 = Employee(34);
  print(e1.getId);
  e1.setId = 45;
  print(e1.getId);
}