# 1.4.0 - 2025-12-13

- **feat**: Added a comprehensive **Community & Engagement System**. This major feature introduces the foundational data models, fixtures and tests for user reactions, comments, a multi-entity reporting system, and a smart app review funnel. The entire system is remotely configurable via a new unified `CommunityConfig` model and extends `UserLimitsConfig` to support role-based limits for comments and reports.
- **BREAKING** refactor!: Overhauled data models and configuration to align with the new identity pivot toward news aggregator. This major refactor introduces a more scalable remote configuration structure, standardizes enums and models for broader use (e.g., `FeedItem` settings), and simplifies ad, notification, and headline data structures for improved clarity and maintainability.
- **feat**: Introduce data models to support a filter-based push notification system. This includes `SavedHeadlineFilter`, `SavedSourceFilter`, and related configuration models, providing the architectural foundation for clients to implement notification subscriptions.
- **BREAKING** refactor!: Rework `UserPreferenceConfig` to support the new notification system with a more scalable, role-based map structure for all user limits.
- **test**: Add comprehensive unit tests for all new and refactored models.

# 1.3.1 - 2025-10-24

- **chore**: fixed the url of the source fixtures.

# 1.3.0 - 2025-10-24

- **BREAKING** feat!: add required `logoUrl` property to `Source` model.
- **chore**: add more fixtures.
- **test**: update `Source` model tests to reflect the new `logoUrl` property.

# 1.2.1 - 2025-10-15

- **fix**: populate `followedCountries` in user preferences fixture.
- **fix**: align `user_content_preferences_test` with fixture data.
- **chore**: use dynamic image URLs for headline fixtures.
- **chore**: refactor tests to use fixtures directly instead of manual setup.

# 1.2.0 - 2025-10-12

- **feat**: add SavedFilter model for storing user-defined filter combinations.
- **BREAKING** feat!: link SavedFilter to UserContentPreferences, making `savedFilters` a required field.
- **BREAKING** feat!: add limits for saved filters to UserPreferenceConfig.
- **BREAKING** refactor!: organize saved models into a new `user_presets` directory.
- **test**: add unit tests for SavedFilter model.
- **test**: update tests for UserContentPreferences to include saved filters.
- **docs**: update README to reflect new User Presets section and model.
- **chore**: add fixture data for SavedFilter.
- **chore**: synchronize all related fixtures with recent model updates.
