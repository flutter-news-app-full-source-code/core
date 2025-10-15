# 1.2.1 - 2025-10-15

- fix(fixtures): populate `followedCountries` in user preferences fixture.
- fix(test): align `user_content_preferences_test` with fixture data.
- chore(fixtures): use dynamic image URLs for headline fixtures.
- chore(test): refactor tests to use fixtures directly instead of manual setup.

# 1.2.0 - 2025-10-12

- feat: add SavedFilter model for storing user-defined filter combinations.
- **BREAKING** feat!: link SavedFilter to UserContentPreferences, making `savedFilters` a required field.
- **BREAKING** feat!: add limits for saved filters to UserPreferenceConfig.
- **BREAKING** refactor!: organize saved models into a new `user_presets` directory.
- test: add unit tests for SavedFilter model.
- test: update tests for UserContentPreferences to include saved filters.
- docs: update README to reflect new User Presets section and model.
- chore: add fixture data for SavedFilter.
- chore: synchronize all related fixtures with recent model updates.
