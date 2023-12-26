import 'package:safe_lodash/safe_lodash.dart';
import 'package:test/test.dart';

void main() {
  test('chunk', () {
    var list1 = chunk(['a', 'b', 'c', 'd'], 2);
    var want1 = [
      ['a', 'b'],
      ['c', 'd']
    ];
    expect(list1, want1);

    var list2 = chunk(['a', 'b', 'c', 'd'], 2);
    var want2 = [
      ['a', 'b'],
      ['c', 'd']
    ];
    expect(list2, want2);
  });

  test("slice", () {
    var list = slice([1, 2, 3, 4], 2);
    var want = [3, 4];
    expect(list, want);
  });
}
