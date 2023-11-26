
import 'dart:async';

void main() async {
  loadString('Hello World').then((value) => print('$value HAHA'));
  String async1 = await loadString('Maayong buntag');
  print(async1);
}

Future<String> loadString(String str) {
  return Future.delayed(Duration(seconds: 1)).then((v) {
    return 'String: $str | $v | ';
  });
}