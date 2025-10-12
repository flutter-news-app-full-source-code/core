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
