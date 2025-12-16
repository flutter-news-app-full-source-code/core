# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog,
and this project adheres to Semantic Versioning.

## [Unreleased]

### Added
- **feat(analytics)**: Established a robust and extensible analytics event tracking system. It standardizes event definitions and their associated data through type-safe enums and payload models, ensuring consistency and reducing errors. The changes also introduce a new, modular approach to dashboard data representation, moving away from a single summary model to dedicated models for charts, KPIs, and ranked lists, all configurable via remote settings.

### Changed
- **refactor(config)**: Extended the `RemoteConfig` and `FeaturesConfig` models to allow remote configuration of analytics, including enabling/disabling, active provider selection, and event sampling. Additionally, a new `DateTimeConverter` is introduced and applied across various models (`RemoteConfig`, `Country`, `Headline`, `Language`, `Source`, `Topic`, `InAppNotification`, `PushNotificationDevice`, `AppReview`, `Engagement`, `Report`) to standardize date serialization, replacing the previous `json_helpers.dart` utility.




## [1.4.0] - 2025-12-13

### Added
- **feat**: Added a comprehensive **Community & Engagement System**. This major feature introduces the foundational data models, fixtures and tests for user reactions, comments, a multi-entity reporting system, and a smart app review funnel. The entire system is remotely configurable via a new unified `CommunityConfig` model and extends `UserLimitsConfig` to support role-based limits for comments and reports.
- **feat**: Introduced data models to support a filter-based push notification system. This includes `SavedHeadlineFilter`, `SavedSourceFilter`, and related configuration models, providing the architectural foundation for clients to implement notification subscriptions.

### Changed
- **BREAKING refactor**: Overhauled data models and configuration to align with the new identity pivot toward news aggregator. This major refactor introduces a more scalable remote configuration structure, standardizes enums and models for broader use (e.g., `FeedItem` settings), and simplifies ad, notification, and headline data structures for improved clarity and maintainability.
- **BREAKING refactor**: Reworked `UserPreferenceConfig` to support the new notification system with a more scalable, role-based map structure for all user limits.

### Fixed
- **test**: Added comprehensive unit tests for all new and refactored models.

## [1.3.1] - 2025-10-24

### Fixed
- **chore**: Fixed the url of the source fixtures.

## [1.3.0] - 2025-10-24

### Added
- **BREAKING feat**: Added required `logoUrl` property to `Source` model.
- **chore**: Added more fixtures.

### Changed
- **test**: Updated `Source` model tests to reflect the new `logoUrl` property.

## [1.2.1] - 2025-10-15

### Fixed
- **fix**: Populated `followedCountries` in user preferences fixture.
- **fix**: Aligned `user_content_preferences_test` with fixture data.

### Changed
- **chore**: Used dynamic image URLs for headline fixtures.
- **chore**: Refactored tests to use fixtures directly instead of manual setup.

## [1.2.0] - 2025-10-12

### Added
- **feat**: Added SavedFilter model for storing user-defined filter combinations.
- **test**: Added unit tests for SavedFilter model.
- **docs**: Updated README to reflect new User Presets section and model.
- **chore**: Added fixture data for SavedFilter.

### Changed
- **BREAKING feat**: Linked SavedFilter to UserContentPreferences, making `savedFilters` a required field.
- **BREAKING feat**: Added limits for saved filters to UserPreferenceConfig.
- **BREAKING refactor**: Organized saved models into a new `user_presets` directory.
- **test**: Updated tests for UserContentPreferences to include saved filters.
- **chore**: Synchronized all related fixtures with recent model updates.
