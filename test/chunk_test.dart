import 'package:safe_lodash/safe_lodash.dart';
import 'package:test/test.dart';

void main() {
  group('chunk', () {
    final array = [0, 1, 2, 3, 4, 5];

    test('should return chunked arrays', () {
      final actual = chunk(array, 3);
      expect(
          actual,
          equals([
            [0, 1, 2],
            [3, 4, 5],
          ]));
    });

    test('should return the last chunk as remaining elements', () {
      final actual = chunk(array, 4);
      expect(
          actual,
          equals([
            [0, 1, 2, 3],
            [4, 5],
          ]));
    });

    test('should ensure the minimum `size` is `0`', () {
      final values = [-1, -2, -3];

      final expected = values.map((_) => []).toList();

      final actual = values.map((n) => chunk(array, n)).toList();

      expect(actual, equals(expected));
    });

    test('should coerce `size` to an integer', () {
      expect(
          chunk(array, array.length ~/ 4),
          equals([
            [0],
            [1],
            [2],
            [3],
            [4],
            [5],
          ]));
    });
  });
}
