# 🛠️ core

![coverage: percentage](https://img.shields.io/badge/coverage-67-green)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![License: PolyForm Free Trial](https://img.shields.io/badge/License-PolyForm%20Free%20Trial-blue)](https://polyformproject.org/licenses/free-trial/1.0.0)

The essential shared Dart package providing the **Core Data Models** for the **Flutter News App - Full Source Code Toolkit**. it ensures data consistency and accelerates development across our Flutter mobile app, web dashboard, and Dart Frog backend API.

Think of it as the common language 🗣️ that all parts of your news application will speak!

## 🌟 Core Benefits

*   **🧱 Unified Data Structure:** Guarantees that `Headline`, `Source`, `User`, and configuration data are handled identically across the entire Flutter Full News App.
*   **🚀 Rapid Development:** Start building features faster with pre-defined, robust models for common news application needs.
*   **🔗 Seamless Integration:** Enables the Flutter mobile app, web dashboard, and Dart Frog API to work together flawlessly using a shared language.
*   **🎯 Consistency by Design:** Reduces errors and simplifies maintenance by providing a single source of truth for all core data definitions.
*   **🛡️ Standardized Error Handling:** Includes a comprehensive hierarchy of `HttpException` subtypes for predictable error management across all layers.
*   **🌟 Foundation for Rich Features:** Provides models for user personalization (`UserContentPreferences`, `UserAppSettings`), dynamic feed items (`Ad`, `FeedAction`), remote configuration (`RemoteConfig`), and standardized API responses.

## 🎁 Key Models Provided

This package includes well-defined Dart classes for:

*   **News Content:** `Headline`, `Topic`, `Source`, `Country`
*   **Feed System:** `FeedItem` (and its subtypes `Ad`, `FeedAction`), `FeedActionType`
*   **User Data:** `User`, `AppUserRole`, `DashboardUserRole`, `Permission`, `UserContentPreferences`, `UserAppSettings`
*   **Application Configuration:** `RemoteConfig` (containing `AdConfig`, `UserPreferenceConfig`, `AppStatus`, and `AccountActionConfig`)
*   **Dashboard:** `DashboardSummary`
*   **Querying & Pagination:** `SortOption` and `PaginationOptions` to build flexible, server-side queries.
*   **API Communication:** `PaginatedResponse`, `SuccessApiResponse`, and a comprehensive `HttpException` hierarchy for standardized responses and error handling.

## 📊 Sample Data / Fixtures

To further accelerate development and provide immediate demonstration capabilities, `core` now includes a set of **pre-defined, in-memory fixture data** for core models like `Headline`, `Topic`, `Source`, `Country`, and `RemoteConfig`. These fixtures are directly embedded as Dart constants, enabling:

*   **⚡ Instant Setup:** Quickly initialize in-memory data stores for testing or local development without needing a backend.
*   **🧪 Reliable Testing:** Use consistent, realistic data for unit and integration tests.
*   **🚀 Rapid Prototyping:** Jumpstart UI development and feature implementation with readily available sample content.

## 🔑 Access and Licensing

`core` is source-available as part of the Flutter Full News App ecosystem.

To acquire a commercial license for building unlimited news applications, please visit 
the [Flutter Full News App GitHub organization page](https://github.com/flutter-news-app-full-source-code)
for more details.

## 🚀 Getting Started 

To integrate `core` into a Flutter Full News App component (or your custom Dart/Flutter project):

1.  Add `core` as a dependency in your `pubspec.yaml` file:

    ```yaml
    dependencies:
      core:
        git:
          url: https://github.com/flutter-news-app-full-source-code/core.git
          # You might want to pin to a specific ref/tag in a real project:
          # ref: main 
    ```

2.  Run `dart pub get` (or `flutter pub get` for Flutter projects).

3.  Import `package:core/core.dart` to access all shared models and utilities.

    ```dart
    import 'package:core/core.dart';
