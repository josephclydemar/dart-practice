


void main() {
  // Core Dart Language has the ff. datatypes:
  // numbers - 'num' is a parent class of 'int' and 'double' (num, int, double) 
  // strings 'Hello!'                                        (String)
  // booleans - true/false                                   (bool)
  // lists - aka arrays                                      (List<int>)
  // maps - hashmaps, like dictionaries in python            (Map<String, int>)
  // records - like tuples in python                         (Record)
  // sets - like sets in python                              (Set<int>)
  // callables - aks function                                (Function)
  // runes - unicode character sets                          (Runes)
  // symbols - #symbol

  int x = 10;
  double y = 10.0;
  String s = 'This_is_x_plus_y_${x + y}';
  String multilineString = '''
                           This is a very long paragraph.
                           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet rhoncus tellus, sed ultricies magna. Praesent non pretium lorem. Proin placerat tempor est, vitae dignissim libero tempor et. Quisque dignissim tincidunt massa consectetur fermentum. Praesent scelerisque turpis massa, laoreet suscipit risus volutpat nec. Duis nunc est, aliquam nec neque feugiat, pharetra feugiat nibh. Mauris quis elementum mauris, et rhoncus nunc. Morbi ante orci, faucibus non felis eget, gravida cursus nunc. In iaculis convallis felis sed cursus. Vivamus eget leo sed ante consequat tempus. Mauris condimentum dolor vel risus blandit viverra. Nam sit amet nulla euismod augue sodales dignissim ut vitae erat. Nunc rhoncus nunc sit amet ultricies interdum.

                           Curabitur non diam varius, facilisis est vitae, mollis quam. Maecenas varius velit nec augue ullamcorper, sed dictum erat tincidunt. Integer pulvinar, ipsum sed ultricies feugiat, eros ex convallis nibh, eu congue massa diam sed sapien. Integer commodo orci nec sem pretium venenatis. Nam nec diam id nibh eleifend interdum. Sed scelerisque ipsum quis justo facilisis eleifend. Aliquam ac nisi nulla.

                           Curabitur mattis ligula nisi, a facilisis nisl lobortis et. Sed aliquet a neque eu cursus. Aenean tempor, lacus non condimentum bibendum, elit quam dapibus libero, id accumsan quam tortor vitae odio. Pellentesque urna velit, suscipit a dui sit amet, finibus volutpat orci. Duis ut ipsum in mi placerat dapibus feugiat ultricies turpis. Cras in vehicula neque. Morbi sed sapien eget mi feugiat dictum. Duis quis elit vel justo sodales blandit sed a mi. Sed vel ante tincidunt, scelerisque lorem vitae, dignissim ante. Suspendisse placerat tortor tellus, vitae ullamcorper risus maximus sit amet. Sed ullamcorper laoreet elementum. Donec lacinia dignissim lorem vel dapibus. Pellentesque quis hendrerit nibh.

                           Aenean sed sapien sed felis gravida dictum. Donec volutpat ipsum quis velit efficitur, eu finibus ante pharetra. Suspendisse potenti. Curabitur egestas ultricies eros, vitae pharetra est auctor ut. Nam quis aliquet nunc. Pellentesque a elementum eros, quis faucibus mauris. Morbi fermentum vestibulum felis. Suspendisse tincidunt sed diam in convallis. Nullam magna lorem, venenatis ut mattis vitae, pharetra eget lectus. Donec posuere felis libero, ut blandit risus suscipit vel. Aliquam erat volutpat. Nullam accumsan, orci at venenatis porttitor, turpis dolor sodales leo, vel facilisis sem leo in elit. Praesent convallis ante enim, id posuere metus sollicitudin sit amet. Phasellus aliquet risus sed tempor ultrices.

                           Pellentesque volutpat laoreet enim vel pulvinar. Duis in eros consequat, auctor lectus id, tempor ligula. Quisque vitae leo eu turpis viverra sagittis sed ac tortor. Donec sit amet nunc et neque pretium facilisis sit amet id dolor. Vivamus convallis molestie odio, sit amet finibus elit fermentum sed. In tincidunt mauris vel quam sollicitudin, sed cursus massa iaculis. Suspendisse vitae nisi non arcu malesuada rhoncus eu vitae ipsum. Pellentesque tempor consequat velit vel ultrices. Nullam quis euismod purus. Phasellus vel lacinia orci. Praesent accumsan urna iaculis, rhoncus lacus quis, hendrerit lectus. Aliquam erat volutpat. Curabitur id ipsum nisl. Suspendisse ut nunc tellus. In fringilla enim nibh, sed iaculis ex hendrerit vel.

                           Lorem ipsum dolor sit amet, consectetur adipiscing elit. In arcu risus, dictum nec aliquet ornare, pulvinar nec sapien. Donec tristique, sapien non mollis vulputate, tortor nisl aliquam velit, nec dapibus erat nisi ac purus. Sed venenatis lectus eu enim efficitur iaculis. Nullam lacus lectus, porttitor sed pellentesque a, hendrerit a nunc. Nunc ligula diam, tincidunt vitae pretium eget, commodo vel nunc. Nunc feugiat suscipit odio. Nam laoreet augue mi, rhoncus volutpat mi euismod nec. Mauris molestie sapien dolor, quis scelerisque mauris semper mollis.

                           In tristique tortor non viverra scelerisque. Sed varius et nisl ut dapibus. Nunc in fermentum justo, et rutrum neque. Praesent ac leo eget odio sollicitudin mattis. Etiam eget tortor tristique, porta metus at, varius nisl. Fusce interdum mollis lectus, in euismod purus interdum sed. In pharetra pulvinar nisl. Phasellus dapibus vitae felis vel faucibus. Phasellus elementum diam et orci aliquam luctus. Nam diam massa, efficitur id nulla congue, elementum tempus orci. Maecenas eu mauris dui.

                           Suspendisse scelerisque ullamcorper vestibulum. Fusce ligula nibh, lacinia eget quam ut, maximus suscipit sapien. Morbi mattis elit eget nisi aliquam, et vulputate justo consequat. Cras eget nisl sed elit sollicitudin fermentum nec vitae nisi. Sed euismod orci neque, et mattis nibh gravida eget. Nam ac risus ante. Vestibulum malesuada ipsum quis dolor gravida scelerisque. Sed laoreet aliquam libero sit amet sollicitudin. Sed in eros vitae lorem sollicitudin mollis et quis nunc. Phasellus a nunc interdum, facilisis turpis eu, placerat metus. Cras egestas, ante ut molestie rutrum, libero mi euismod sapien, nec interdum nulla nulla vel odio. Maecenas tempor lectus nibh, a eleifend nisi ornare ut. Nulla condimentum elementum fringilla. Sed pulvinar nisl in ex ultricies hendrerit. Proin semper enim ut urna egestas consequat.

                           Nunc semper ipsum condimentum magna gravida condimentum. Donec accumsan tortor in dolor scelerisque porta. Donec vulputate sapien vel diam tincidunt auctor. Vestibulum tempor mi a risus sodales aliquet. Nullam fermentum ultrices tellus id pharetra. Phasellus quis mi vitae sem semper imperdiet porta id tellus. Proin ipsum enim, varius quis malesuada sit amet, efficitur vel urna. Praesent viverra hendrerit est, nec congue velit elementum a. Integer ut arcu aliquam, bibendum metus commodo, pretium tortor. Vivamus aliquam venenatis sem, iaculis hendrerit risus mollis et. Phasellus iaculis, nunc eu interdum eleifend, ligula elit ultricies est, et lobortis sapien mauris eu turpis. Ut et vestibulum sem. Nullam pulvinar venenatis placerat. Donec ac turpis non nunc elementum volutpat at semper diam. Curabitur fermentum orci et sagittis consectetur.
                           ''';
  bool b = true;
  List<int> listInt = [1, 2, 3];
  List<String> listString = ['4', '5', '6'];
  Map<String, int> mapPeople = {
    'Michael': 41,
    'Joseph': 51,
    'Kate': 42
  };
  Record recordInt = (5, 7, 8, 10);
  Record recordString = ('4', '5', 'Candy');
  Set<int> setInt = {12, 14, 16, 18};
  Runes runesT = s[0].runes;
  Runes runesA = 'A'.runes;

  // Put ? (question mark) after the datatype keyword to allow the variable
  // to temporarily not have a value or accept a null value.
  int? age1;
  String? name1;
  double? grade1;

  int? age2 = null;
  String? name2 = null;
  double? grade2 = null;

  print('Types:');
  print('Type String (Multiline): $multilineString');
  print('Type String (Multiline): ${multilineString.toUpperCase()}');
  print('Type String: ${s}');
  print('Type String Code Units: ${s.codeUnits}');
  print('Type String: ${s[8]}');
  print('Type bool: ${b}');
  print('Type List<int>: ${listInt}');
  print('Type: ${listInt[1]}');
  listInt[1] = 4;
  listString.add('8');
  print('Type List<String>: ${listString}');
  print('Type: ${listString[0]}');
  print('Type Map<String, int>: ${mapPeople}');
  print('Type Record: ${recordInt}');
  print('Type Record: ${recordString}');
  print('Type Set<int>: ${setInt}');
  print('Type Runes: ${runesT}');
  print('Type Runes: ${runesA}');
  print('Hello, World');
  print('From Dart\n\n\n');

  print('age1: ${age1}');
  print('name1: ${name1}');
  print('grade1: ${grade1}');

  print('age2: ${age2}');
  print('name2: ${name2}');
  print('grade2: ${grade2}');


  // WAYS OF VARIABLE DECLARATION:

  // Can be 'null' at declaration, then can be assigned any datatype, and can
  // be assigned to any value and any datatype even if not the first assignment
  // operation.
  dynamic firstWay;
  firstWay = '12'; // NO ERROR: Value assignment & datatype inference after declaration (first assignment).
  firstWay = '15'; // NO ERROR: Value assignment after declaration (second assignment).
  firstWay = 17; // NO ERROR: Still Confused
  firstWay = 11.6; // NO ERROR: Still Confused
  firstWay = true; // NO ERROR: Still Confused
  
  // Can be 'null' at declaration, then can be assigned any datatype at first
  // assignment operation, after first assignment operation it can be assigned
  // another value but cannot be assigned to a different datatype.
  var secondWay; // NO ERROR: 'null' & datatype not assigned at declaration
  secondWay = '12'; // NO ERROR: Value assignment & datatype inference after declaration (first assignment).
  secondWay = '15'; // NO ERROR: Value assignment after declaration (second assignment).
  secondWay = 17; // NO ERROR: Still Confused
  secondWay = false; // NO ERROR: Still Confused

  // Can be 'null' at declaration, then can be assigned any of its declared
  // datatype. After its first assignment operation, it cannot be assigned again
  // to any value or any datatype.
  final double fourthWay; // NO ERROR: 'null' at declaration.
  fourthWay = 28.5; // NO ERROR: Value assignment after declaration (first assignment).
  // fourthWay = 51.6; // ERROR: Value assignment after declaration (second assignment).

  // Cannot be 'null' at declaration. Must be assigned a value of its declared
  // datatype at declaration. Its assignment operation can only be at the 
  // declaration.
  // const int thirdWay; // ERROR: 'null' at declaration.
  const int thirdWay = 12; // NO ERROR: Value assignment at declaration
  // thirdWay = 12; // ERROR: Value assignment after declaration (Even if it's the same value).
  

  print('\n\nFirst Way: ${firstWay}');
  print('Second Way: ${secondWay}');
  print('Third Way: ${thirdWay}');
  print('Fourth Way: ${fourthWay}\n\n');




  const double PI = 3.14;
  print(PI);

  const List<double> stocks = [4.1, 5.76, 3.15];
  // stocks[1] = 6.45; Problem: Cannot modify the List
  // stocks.add(22.15);
  print(stocks);

  List<double> bonds = const [6.12, 7.55, 0.51, 4.02];
  // bonds[2] = 3.22; Also Problem: I dont understand
  // bonds.add(7.32); 
  print(bonds);


  // Type Conversion
  int pikachuInt = 52;
  String charizardString = '14';
  double balbasaurDouble = 6.45;
  String pikachuString = pikachuInt.toString();
  int balbasaurInt = balbasaurDouble.toInt();
  double charizardDouble = double.parse(charizardString);
  print(pikachuInt.runtimeType);
  print(charizardString.runtimeType);
  print(balbasaurDouble.runtimeType);

  print(pikachuString.runtimeType);
  print(charizardDouble.runtimeType);
  print(balbasaurInt.runtimeType);


  // Operators in Dart
  print('\n\n\nArithmetic Operations:');
  int number1 = 18;
  int number2 = 5;

  int addResult = number1 + number2;
  int minusResult = number1 - number2;
  int multiplyResult = number1 * number2;
  double divideResult = number1 / number2;
  int intDivideResult = number1 ~/ number2;
  int modResult = number1 % number2;

  print('Addition result: $addResult');
  print('Subtraction result: $minusResult');
  print('Multiplication result: $multiplyResult');
  print('Division result: $divideResult');
  print('Integer Division result: $intDivideResult');
  print('Mod result: $modResult');

  int myNumber1 = 24;
  int myNumber2 = 28;
  // Adds 1 to the unmodified value first, then assigns the modified value to the variable, then returns the modified value of the variable.
  print('Pre-Increment result: ${++myNumber1}');
  // Returns the unmodified value first, then adds 1 to the unmodified value, then assigns the modified value to the variable.
  print('Post-Increment result: ${myNumber2++}');

  bool equalsResult = number1 == number2;
  bool notEqualResult = number1 != number2;
  bool lessThanResult = number1 < number2;
  bool greaterThanResult = number1 > number2;
  bool lessThanOrEqualResult = number1 <= number2;
  bool greaterThanOrEqualResult = number1 >= number2;
  
  print('\n\nRelational Operations:');
  print('Equals result: $equalsResult');
  print('Less Than result: $lessThanResult');
  print('Greater Than result: $greaterThanResult');
  print('Not Equals result: $notEqualResult');
  print('Less Than or Equal result: $lessThanOrEqualResult');
  print('Greater Than or Equal result: $greaterThanOrEqualResult');


  bool boolean1 = true;
  bool boolean2 = true;

  bool andResult = boolean1 && boolean2;
  bool orResult = boolean1 && boolean2;
  bool xorResult = boolean1 ^ boolean2;
  bool negationResult = !boolean2;
  print('\n\nLogical Operators: ');
  print('And result: $andResult');
  print('Or result: $orResult');
  print('Xor result: $xorResult');
  print('Negate result: $negationResult');
}