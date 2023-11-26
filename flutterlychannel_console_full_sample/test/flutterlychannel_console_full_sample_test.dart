import 'package:flutterlychannel_console_full_sample/flutterlychannel_console_full_sample.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('addNum', () {
    expect(addNum([5, 3, 7]), 15);
    expect(addNum([1, 3, 3]), 7);
    expect(addNum([7, 3, 7, 5]), 22);
  });

  test('minusNum', () {
    expect(minusNum([5, 7, -8]), 6);
  });

  test('multNum', () {
    expect(multNum([5, 7, 9]), 315);
  });
}
