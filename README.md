# 🛠️ ht_shared

![coverage: percentage](https://img.shields.io/badge/coverage-95-green)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![License: PolyForm Free Trial](https://img.shields.io/badge/License-PolyForm%20Free%20Trial-blue)](https://polyformproject.org/licenses/free-trial/1.0.0)

The essential shared Dart package providing the **Core Data Models** for the **Headlines Toolkit**. `ht_shared` ensures data consistency and accelerates development across our Flutter mobile app, web dashboard, and Dart Frog backend API.

Think of it as the common language 🗣️ that all parts of your news application will speak!

## 🌟 Core Benefits of `ht_shared`

*   **🧱 Unified Data Structure:** Guarantees that your `Headline`, `Source`, `User`, `FeedItem`, and configuration data are handled identically across the entire Headlines Toolkit.
*   💡 **Streamlined Feed Engagement:** Offers core models like `EngagementContent` and `Ad`, allowing your applications to seamlessly embed calls-to-action and advertisements. The logic for *when* and *how* these appear is now managed directly within your client applications, offering precise control over the user experience.
*   **🚀 Rapid Development:** Start building features faster with pre-defined, robust models for common news application needs. No reinventing the wheel!
*   **🔗 Seamless Integration:** Enables the Flutter mobile app, web dashboard, and Dart Frog API to work together flawlessly.
*   **🎯 Consistency by Design:** Reduces errors and simplifies maintenance by providing a single source of truth for core data definitions.
*   **🌟 Foundation for Rich Features:** Includes models for user personalization (`UserContentPreferences`, `UserAppSettings`), dynamic feed items (`Ad`, `EngagementContent`), application-wide settings (`AppConfig`, `UserPreferenceConfig`, `AdConfig`), and standardized API responses.

## 🎁 Key Models Provided

This package includes well-defined Dart classes for:

*   📰 **News Content:** `Headline`, `Category`, `Source`, `Country`
*   🧩 **Feed System:** `FeedItem` (and its subtypes `Ad`, `EngagementContent`), `FeedItemAction`
*   👤 **User Data:** `User`, `UserRole`, `Permission`, `UserContentPreferences`, `UserAppSettings`
*   ⚙️ **Application Configuration:** `AppConfig` (containing `AdConfig` and `UserPreferenceConfig`)
*   📡 **API Communication:** `PaginatedResponse`, `SuccessApiResponse`, and a comprehensive `HtHttpException` hierarchy for standardized error handling.

## 📊 Sample Data / Fixtures

To further accelerate development and provide immediate demonstration capabilities, `ht_shared` now includes a set of **pre-defined, in-memory fixture data** for core models like `Headline`, `Category`, `Source`, `Country`, and `AppConfig`. These fixtures are directly embedded as Dart constants, enabling:

*   **⚡ Instant Setup:** Quickly initialize in-memory data stores for testing or local development without needing a backend.
*   **🧪 Reliable Testing:** Use consistent, realistic data for unit and integration tests.
*   **🚀 Rapid Prototyping:** Jumpstart UI development and feature implementation with readily available sample content.

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
