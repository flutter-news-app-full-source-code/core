# 🛠️ ht_shared

![coverage: percentage](https://img.shields.io/badge/coverage-81-green)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![License: PolyForm Free Trial](https://img.shields.io/badge/License-PolyForm%20Free%20Trial-blue)](https://polyformproject.org/licenses/free-trial/1.0.0)

The essential shared Dart package providing the **Core Data Models** for the **Headlines Toolkit**. `ht_shared` ensures data consistency and accelerates development across our Flutter mobile app, web dashboard, and Dart Frog backend API.

Think of it as the common language 🗣️ that all parts of your news application will speak!

## ✨ Why `ht_shared` Matters

*   **🧱 Unified Data Structure:** Guarantees that your `Headline`, `Source`, `User`, `FeedItem`, and configuration data are handled identically across the entire Headlines Toolkit.
*   **🚀 Rapid Development:** Start building features faster with pre-defined, robust models for common news application needs. No reinventing the wheel!
*   **🔗 Seamless Integration:** Enables the Flutter mobile app, web dashboard, and Dart Frog API to work together flawlessly.
*   **🎯 Consistency by Design:** Reduces errors and simplifies maintenance by providing a single source of truth for core data definitions.
*   **🌟 Foundation for Rich Features:** Includes models for user personalization (preferences, settings), dynamic feeds, and standardized API responses.

## 🎁 Key Models Provided

This package includes well-defined Dart classes for:

*   📰 **News Content:** `Headline`, `Category`, `Source`, `Country`
*   🧩 **Feed System:** `FeedItem` (and its subtypes like `Ad`, `SuggestedContent`, `EngagementContent`), `FeedItemAction`
*   👤 **User Data:** `User`, `UserContentPreferences`, `UserAppSettings`
*   ⚙️ **Application Configuration:** `AppConfig`
*   📡 **API Communication:** `PaginatedResponse`, `SuccessApiResponse`, and a comprehensive `HtHttpException` hierarchy for standardized error handling.

## 🔑 Access and Licensing

`ht_shared` is source-available as part of the Headlines Toolkit ecosystem.

To acquire a commercial license for building unlimited news applications, please visit 
the [Headlines Toolkit GitHub organization page](https://github.com/headlines-toolkit)
for more details.

## 🚀 Getting Started 

To integrate `ht_shared` into a Headlines Toolkit component (or your custom Dart/Flutter project):

1.  Add `ht_shared` as a dependency in your `pubspec.yaml` file:

    ```yaml
    dependencies:
      ht_shared:
        git:
          url: https://github.com/headlines-toolkit/ht-shared.git
          # You might want to pin to a specific ref/tag in a real project:
          # ref: main 
    ```

2.  Run `dart pub get` (or `flutter pub get` for Flutter projects).

3.  Import `package:ht_shared/ht_shared.dart` to access all shared models and utilities.

    ```dart
    import 'package:ht_shared/ht_shared.dart';
    ```