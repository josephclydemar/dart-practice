// * Asynchronous Programming:
// * Async/Await

import 'dart:math';

void main() {
  const int x = 9;
  final Future<int> myFuture1 = Future<int>(() {
    if (x < 7) {
      throw Exception('myFuture1: Wrong');
    }
    return 4;
  });
  // print(myFuture1);
  // myFuture1.then((int value) => print(value)).catchError((error) => print(error));

  final Future<String> myFuture2 = Future<String>(() {
    if (x < 7) {
      throw Exception('myFuture2: Wrong');
    }
    return 'I am future 2';
  });


  final Future<Future<String>> myFuture3 = Future<Future<String>>(() {
    int p = 0;
    List<int> k = [1, -1];
    for(int i=0; i<5500; i++) {
      p += i * k[(Random().nextInt(9) % 2)];
    }
    return Future<String>(() {
      return 'I am future 3 [$p]';
    });
  });

  // print(myFuture2);
  // myFuture2.then((Future value1) {
  //   return value1;
  // }).then((value2) {
  //   print(value2);
  // });


  final Future<Future<String>> myFuture4 = Future<Future<String>>(() {
    return Future<String>(() {
      return 'I am future 4';
    });
  });
  
  // var myFuture3Result = myFuture3.then((Future<String> value1) {
  //   return value1;
  // }).then((value2) {
  //   return value2;
  // });
  // print('myFuture3: $myFuture3Result');
  // print('myFuture3: ${myFuture3Result.runtimeType}');
  // print('HAHA SHARED');
  () async {
    int result1 = await myFuture1;
    String result2 = await myFuture2;
    String result3 = await myFuture3.then((value) => value);
    String result4 = await await myFuture4;
    // print(result1);
    print(result1);
    print(result2);
    print(result3);
    print(result4);
  }();
  ((int x) => print(x + 5))(6);
  myFuture1.then((value) => print('Future 1: $value'));
  myFuture2.then((value) => print('Future 2: $value'));
  myFuture3.then((Future<String> value) => value).then((String value) => print('Future 3: $value'));
  myFuture4.then((value) => value).then((value) => print('Future 4: $value'));
}