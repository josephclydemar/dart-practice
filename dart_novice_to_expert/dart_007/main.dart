// * Asynchronous Programming:
// * Isolates & Event Loops, Futures


Future<String> getData(String arg, int dur) {
  return Future<String>.delayed(Duration(seconds: dur), () => 'HAHA: $arg');
}
Future pagTanga() {
  return Future(() {
    print('Dugay..');
  });
}


void main() {
  final myFuture1 = Future.value(5);
  final myFuture2 = Future.error(Exception('The operation failed...'));
  final myFuture3 = getData('lomi', 5);
  final myFuture4 = getData('bulalo', 4);
  final myFuture5 = getData('alimango', 2);
  final myFuture6 = getData('kamatis', 3);
  final myFuture7 = pagTanga();

  print(myFuture1);
  myFuture1.then((value) => print(value));
  myFuture2.then((value) => print(value)).catchError((err) => print(err));
  myFuture3.then((value) => print(value));
  myFuture4.then((value) => print(value));
  myFuture7.then((value) => print(value));
  (() async {
    String myFuture5Result = await myFuture5;
    String myFuture6Result = await myFuture6;
    print(myFuture5Result);
    print(myFuture6Result);
  })();


}
