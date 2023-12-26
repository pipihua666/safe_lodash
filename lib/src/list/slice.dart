/// Creates a slice of `List` from `start` up to, but not including, `end`.
///
/// - @param {List} [list] The list to slice.
/// - @param {number} [start=0] The start position. A negative index will be treated as an offset from the end.
/// - @param {number} [end=list.length] The end position. A negative index will be treated as an offset from the end.
/// - @returns {List} Returns the slice of `list`.
///
/// @example
/// ```dart
/// var list = [1, 2, 3, 4]
///
/// slice(list, 2)
/// // => [3, 4]
/// ```
List<T> slice<T>(List<T> list, [int start = 0, int? end]) {
  var length = list.length;
  if (length == 0) {
    return [];
  }
  end = end ?? length;

  if (start < 0) {
    start = -start > length ? 0 : length + start;
  }
  end = end > length ? length : end;
  if (end < 0) {
    end += length;
  }
  length = start > end ? 0 : (end - start);

  start = start >= 0 ? start : 0;

  return List<T>.generate(length, (index) => list[index + start]);
}
