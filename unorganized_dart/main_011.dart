// Null Safety
import './human.dart';

void printName(String? name) {
  print('printName: Hello $name');
}
void main() {
  int a;
  int? b;
  List<int> list1 = [12, 4, -1];
  List<int?> list2 = [23, 6, null, 7];
  List<int>? list3 = null;

  Map<String, int> map1 = {
    'John': 31,
    'Michael': 29,
    'Brian': 30
  };
  Map<String, int?> map2 = {
    'Jimmy': 34,
    'Ken': null,
    'Kevin': 45
  };
  Map<String?, int> map3 = {
    'Johnson': 12,
    'Dwayne': 44,
    null: 34
  };
  Map<String, int>? map4 = null;
  

  a = 1;
  print(a);
  print(b);

  print('\nList 1: $list1');
  print('List 2: $list2');
  print('List 3: $list3');

  print('\nMap 1: $map1');
  print('Map 2: $map2');
  print('Map 3: $map3');
  print('Map 4: $map4');

  printName(null);

  Human h1 = Human(name: 'Kelly', age: null);
  print(h1.getInfo());
  print(h1.getAge());

}
