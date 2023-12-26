# Dart Lodash

Dart Lodash is a Dart utility library inspired by JavaScript Lodash. It aims to provide a variety of helpful functions to make working with and manipulating data in Dart easier.

## Installation

Add the following dependency to your Dart project's `pubspec.yaml` file:

```yaml
dependencies:
  dart_lodash: ^0.0.1
```

Run `pub get` to install the dependency.

# Usage

```dart
import 'package:dart_lodash/dart_lodash.dart';

void main() {
	// Example usage
	final list = [1, 2, 3, 4, 5];

	// Use the chunk function to split the list into chunks
	final chunkedLists = chunk(list, 2);
	print(chunkedLists); // Output: [[1, 2], [3, 4], [5]]

	// Use the slice function to get a subset of the list
	final slicedList = slice(list, 1, 3);
	print(slicedList); // Output: [2, 3]
}
```

# Functionality

Dart Lodash provides a variety of utility functions, including but not limited to:

- chunk: Splitting a list into chunks
- slice: Getting a subset of a list
