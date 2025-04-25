# ht_shared

![coverage: percentage](https://img.shields.io/badge/coverage-99-green)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![License: PolyForm Free Trial](https://img.shields.io/badge/License-PolyForm%20Free%20Trial-blue)](https://polyformproject.org/licenses/free-trial/1.0.0)

A shared Dart package containing core data models for news-related entities (like headlines, sources, categories, countries) and pagination, used across the application ecosystem (Mobile App, Backend API, Web Dashboard).

## Getting Started

To use this package, add `ht_shared` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  ht_shared:
    git:
      url: https://github.com/headlines-toolkit/ht-shared.git
```

Then, run `flutter pub get` or `dart pub get`.

## Features

This package provides the following core data models:

*   **`Headline`**: Represents a news headline article, including ID, title, description, URLs, publication date, and optional associated `Source` and `Category`.
*   **`Category`**: Represents a news category with an ID, name, and optional description and icon URL.
*   **`Source`**: Represents a news source, including ID, name, description, URL, language, optional headquarters (`Country`), and a `SourceType` enum (e.g., `newsAgency`, `blog`).
*   **`Country`**: Represents a country with an ID, ISO code, name, and flag URL.
*   **`PaginatedResponse<T>`**: A generic class for handling paginated API responses, containing a list of items (`items`), a `cursor` for the next page, and a `hasMore` flag.

## Usage

Import the models barrel file (`package:ht_shared/ht_shared.dart`) and use the classes as needed.

```dart
import 'package:ht_shared/ht_shared.dart';

void main() {
  // Example: Creating a Source and a Headline
  final source = Source(
    id: 'tech-crunch',
    name: 'TechCrunch',
    type: SourceType.specializedPublisher,
    url: 'https://techcrunch.com/',
  );

  final headline = Headline(
    title: 'New Gadget Announced',
    description: 'A revolutionary new device changes everything.',
    url: 'https://techcrunch.com/news/new-gadget',
    publishedAt: DateTime.now().subtract(const Duration(hours: 1)),
    source: source,
    category: Category(id: 'tech', name: 'Technology'),
  );

  print('Headline: ${headline.title} from ${headline.source?.name}');

  // Example: Representing a paginated response of Headlines
  final response = PaginatedResponse<Headline>(
    items: [headline],
    cursor: 'nextPageToken123',
    hasMore: true,
  );

  print('Fetched ${response.items.length} headlines. More available: ${response.hasMore}');
}

```

## License

This package is licensed under the [PolyForm Free Trial](LICENSE). Please review the terms before use.
