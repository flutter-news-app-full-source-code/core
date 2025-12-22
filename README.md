<div align="center">
  <img src="https://avatars.githubusercontent.com/u/202675624?s=400&u=dc72a2b53e8158956a3b672f8e52e39394b6b610&v=4" alt="Flutter News App Toolkit Logo" width="220">
  <h1>Core Package</h1>
  <p><strong>The core data models and utilities for the Flutter News App Toolkit.</strong></p>
</div>

<p align="center">
  <img src="https://img.shields.io/badge/coverage-98%25-lime?style=for-the-badge" alt="coverage">
  <a href="https://flutter-news-app-full-source-code.github.io/docs/"><img src="https://img.shields.io/badge/LIVE_DOCS-VIEW-slategray?style=for-the-badge" alt="Live Docs: View"></a>
  <a href="https://github.com/flutter-news-app-full-source-code"><img src="https://img.shields.io/badge/MAIN_PROJECT-BROWSE-purple?style=for-the-badge" alt="Main Project: Browse"></a>
</p>

This `core` package serves as the foundational shared library for the **Flutter News App Full Source Code Toolkit**. It defines the common language and data structures—including models for news content, user data, and remote configurations—that ensure consistency and accelerate development across the Flutter mobile app, web dashboard, and Dart Frog backend API.

## 📦 Core Components

This package provides a centralized and version-controlled set of shared code
artifacts, categorized as follows:

*   **Data Models:** A comprehensive suite of immutable, serializable Dart
    classes that represent all data entities within the ecosystem. This
    includes everything from core content (`Headline`, `Source`) to user data
    (`User`) and remote configurations (`RemoteConfig`). These models act as
    the strict data contract between the clients and the backend.

*   **Enumerations:** A collection of strongly-typed enums that define
    controlled vocabularies for application states, types, and categories
    (e.g., `ContentStatus`, `UserRole`, `AccessTier`). This eliminates the use
    of "magic strings" and ensures compile-time safety.

*   **Utilities & Exceptions:** Common helper functions (e.g.,
    `DateTimeConverter`) and a standardized hierarchy of `HttpException`
    classes. This ensures consistent error handling and data serialization
    across all packages.

*   **Test Fixtures:** A rich set of predefined sample data for all core
    models. This accelerates unit and integration testing by providing a
    consistent and realistic dataset for developers working on any part of the
    system.

## 🔑 Licensing

This `core` package is an integral part of the [**Flutter News App Full Source Code Toolkit**](https://github.com/flutter-news-app-full-source-code). For comprehensive details regarding licensing, including trial and commercial options for the entire toolkit, please refer to the main toolkit organization page.
