// 
// * Synchronous  ->  int      Iterable<int>
// * Asynchronous ->  Future   Streams<Future>
// * A Stream is a collection of multiple Future


Stream<int> getStreamNumbers1() async* {
  for(int i=0; i<10; i++) {
    yield i;
    await Future.delayed(Duration(milliseconds: 1000));
  }
}

Stream<int> getStreamNumbers2() async* {
  for(int i=0; i<10; i++) {
    yield i;
    await Future.delayed(Duration(milliseconds: 500));
  }
}



void main() {
  getStreamNumbers1().listen((event) {
    print('Data 1: $event --->');
  });
  getStreamNumbers2().listen((event) {
    print('Data 2: $event ------>');
  });
}


