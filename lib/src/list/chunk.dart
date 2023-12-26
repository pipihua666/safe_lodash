import 'package:safe_lodash/src/list/slice.dart';

/// Creates an List of elements split into groups the length of `size`.
/// If `List` can't be split evenly, the final chunk will be the remaining
/// elements.
///
/// - @param {List} [list] The array to process.
/// - @param {Int} [size] The length of each chunk
/// - @returns {List} Returns the new List of chunks.
///
/// @example
/// ```dart
/// chunk(['a', 'b', 'c', 'd'], 2)
/// // => [['a', 'b'], ['c', 'd']]
///
/// chunk(['a', 'b', 'c', 'd'], 3)
/// // => [['a', 'b', 'c'], ['d']]
/// ```
List<List<T>> chunk<T>(List<T> list, [int size = 1]) {
  size = size.clamp(0, list.length);
  final length = list.length;
  if (length == 0 || size < 1) {
    return [];
  }
  int index = 0;
  int resIndex = 0;
  final result = List<List<T>>.filled((length / size).ceil(), []);

  while (index < length) {
    result[resIndex++] = slice(list, index, (index += size));
  }
  return result;
}
