import 'package:safe_lodash/safe_lodash.dart';
import 'package:test/test.dart';

void main() {
  group('slice', () {
    final array = [1, 2, 3];

    test('should use a default `start` of `0` and a default `end` of `length`',
        () {
      final actual = slice(array);
      expect(actual, equals(array));
      expect(actual, isNot(same(array)));
    });

    test('should work with a positive `start`', () {
      expect(slice(array, 1), equals([2, 3]));
      expect(slice(array, 1, 3), equals([2, 3]));
    });

    test('should work with a `start` >= `length`', () {
      for (int start in [3, 4, 2 ^ 32]) {
        expect(slice(array, start), equals([]));
      }
    });

    test('should work with a negative `start`', () {
      expect(slice(array, -1), equals([3]));
    });

    test('should work with a negative `start` <= negative `length`', () {
      for (var start in [-3, -4]) {
        expect(slice(array, start), equals(array));
      }
    });

    test('should work with `start` >= `end`', () {
      for (var start in [2, 3]) {
        expect(slice(array, start, 2), equals([]));
      }
    });

    test('should work with a positive `end`', () {
      expect(slice(array, 0, 1), equals([1]));
    });

    test('should work with a `end` >= `length`', () {
      for (var end in [3, 4, 2 ^ 32]) {
        expect(slice(array, 0, end), equals(array));
      }
    });

    test('should work with a negative `end`', () {
      expect(slice(array, 0, -1), equals([1, 2]));
    });

    test('should work with a negative `end` <= negative `length`', () {
      for (var end in [-3, -4]) {
        expect(slice(array, 0, end), equals([]));
      }
    });

    test('should work as an iteratee for methods like `_.map`', () {
      final array = [
        [1],
        [2, 3],
      ];
      final actual = array.map(slice).toList();

      expect(actual, equals(array));
      expect(actual, isNot(same(array)));
    });
  });
}
