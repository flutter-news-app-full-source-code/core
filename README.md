<div align="center">
  <img src="https://avatars.githubusercontent.com/u/202675624?s=400&u=dc72a2b53e8158956a3b672f8e52e39394b6b610&v=4" alt="Flutter News App Toolkit Logo" width="220">
  <h1>Core Package</h1>
  <p><strong>The essential shared Dart package providing core data models and utilities for the Flutter News App Toolkit.</strong></p>
</div>

<p align="center">
  <img src="https://img.shields.io/badge/coverage-97%25-green?style=for-the-badge" alt="coverage: 97%">
</p>

This `core` package serves as the foundational shared library for the [**Flutter News App Full Source Code Toolkit**](https://github.com/flutter-news-app-full-source-code). It defines the common language and data structures—including models for news content, user data, and remote configurations—that ensure consistency and accelerate development across the Flutter mobile app, web dashboard, and Dart Frog backend API.

## ⭐ Feature Showcase: The Foundation for a Robust News Platform

This package provides the critical building blocks for a professional news application ecosystem.

<details>
<summary><strong>🧱 Unified Data Models</strong></summary>

### 📰 News & Content Entities
- **`Headline`, `Topic`, `Source`, `Country`, `Language`:** Comprehensive models for all core news content, ensuring consistent representation across the entire toolkit.
- **`FeedItem`:** An abstract base class for all items that can appear in a mixed content feed, supporting diverse content types like headlines, ads, and suggested content.

### 🔐 User & Authentication Data
- **`User`, `AppUserRole`, `DashboardUserRole`, `Permission`:** Robust models for user profiles, roles, and permissions, enabling secure and personalized experiences.
- **`UserContentPreferences`, `UserAppSettings`:** Detailed models for storing user-specific content preferences (e.g., followed topics, saved headlines) and application settings (e.g., theme, language).

### ⚙️ Application Configuration
- **`RemoteConfig`:** A central container for all dynamic application settings, fetched from a remote source. This includes:
    - **`AdConfig`:** Master configuration for all advertising, now featuring **highly flexible, role-based control** over ad visibility and frequency for feed, article, and interstitial ads. This allows for granular control over monetization strategies per user segment.
    - **`UserPreferenceConfig`:** Defines user preference limits (e.g., max followed items, saved headlines) tiered by user role.
    - **`AppStatus`:** Manages application-wide status, including maintenance mode and force update directives.
    - **`FeedDecoratorConfig`:** Configures dynamic in-feed elements like calls-to-action and content collections, with role-based visibility.

### 📊 Dashboard & Analytics
- **`DashboardSummary`:** Provides a model for aggregated statistics, useful for administrative dashboards.

### 🔍 Querying & API Communication
- **`SortOption`, `PaginationOptions`:** Models for building flexible, server-side queries with sorting and pagination capabilities.
- **`PaginatedResponse`, `SuccessApiResponse`:** Standardized response wrappers for consistent API communication.
- **`HttpException` Hierarchy:** A comprehensive set of custom exceptions for predictable and standardized error handling across all layers of the application.

> **💡 Your Advantage:** You get a meticulously designed, production-quality data layer that forms the backbone of a scalable news platform. This package eliminates the need to define core data structures from scratch, saving months of development time and ensuring architectural consistency.

</details>

<details>
<summary><strong>🧪 Sample Data & Fixtures</strong></summary>

To further accelerate development and provide immediate demonstration capabilities, `core` includes a set of **pre-defined, in-memory fixture data** for core models like `Headline`, `Topic`, `Source`, `Country`, and `RemoteConfig`. These fixtures are directly embedded as Dart constants, enabling:

*   **⚡ Instant Setup:** Quickly initialize in-memory data stores for testing or local development without needing a backend.
*   **🧪 Reliable Testing:** Use consistent, realistic data for unit and integration tests.
*   **🚀 Rapid Prototyping:** Jumpstart UI development and feature implementation with readily available sample content.

> **💡 Your Advantage:** Leverage ready-to-use sample data for rapid prototyping, reliable testing, and instant setup of development environments, significantly accelerating your workflow.

</details>

## 🔑 Licensing

This `core` package is an integral part of the [**Flutter News App Full Source Code Toolkit**](https://github.com/flutter-news-app-full-source-code). For comprehensive details regarding licensing, including trial and commercial options for the entire toolkit, please refer to the main toolkit organization page.
