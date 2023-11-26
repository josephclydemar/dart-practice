class Student {
  String? _name;
  int? _age;
  
  // This became a 'read-only' attribute because of 'final' keyword.
  final String _schoolName = 'CIT-U';

  // Getters
  String getName() {
    return this._name!;
  }
  int getAge() {
    return this._age!;
  }
  String getSchoolName() {
    return this._schoolName;
  }

  // Setters
  void setName(String name) {
    this._name = name;
  }
  void setAge(int age) {
    this._age = age;
  }
  
  void _studyForExam() {
    print('I am studying for the Exam.');
  }
  void talkToTeacher() {
    print('I am talking with the Teacher.');
  }
}


// void main() {
//   Student s1 = Student();
//   s1._age = 25;
//   s1._name = 'John';
//   print(s1._age);
//   print(s1._name);
// }