Shared utilities and models.

## Features

- Provides a generic `PaginatedResponse` class for handling paginated data.

## Getting started

Add `ht_shared` as a dependency in your `pubspec.yaml` file:

```**yaml**
dependencies:
  ht_shared:
    git:
      url: https://github.com/headlines-toolkit/ht-shared.git
      ref: main
```

## Usage

```dart
import 'package:ht_shared/ht_shared.dart';

void main() {
  final paginatedResponse = PaginatedResponse<String>(
    items: ['item1', 'item2'],
    cursor: 'nextPageCursor',
    hasMore: true,
  );

  print(paginatedResponse.items); // Output: [item1, item2]
}
```
