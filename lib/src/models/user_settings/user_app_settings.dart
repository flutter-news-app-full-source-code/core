import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/user_settings/app_language.dart';
import 'package:ht_shared/src/models/user_settings/display_settings.dart';
import 'package:ht_shared/src/models/user_settings/feed_display_preferences.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_app_settings.g.dart';

/// {@template user_app_settings}
/// Represents a collection of user-specific application settings,
/// including display preferences, language selection, and feed display options.
///
/// This model unifies settings that are tied to a specific user,
/// making it suitable for management via a generic data client.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserAppSettings extends Equatable {
  /// {@macro user_app_settings}
  ///
  /// Creates a new instance of [UserAppSettings].
  ///
  /// An [id] is required, typically the user's unique identifier.
  /// Provides sensible defaults for nested settings if not specified.
  const UserAppSettings({
    required this.id,
    required this.displaySettings,
    required this.language,
    required this.feedPreferences,
  });

  /// Factory method to create a [UserAppSettings] instance from a JSON map.
  factory UserAppSettings.fromJson(Map<String, dynamic> json) =>
      _$UserAppSettingsFromJson(json);

  /// The unique identifier for the user settings, typically the user's ID.
  final String id;

  /// User-configurable settings related to the application's visual appearance.
  final DisplaySettings displaySettings;

  /// The selected application language code (ISO 639-1).
  final AppLanguage language;

  /// User-configurable settings for how content feeds are displayed.
  final FeedDisplayPreferences feedPreferences;

  /// Converts this [UserAppSettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$UserAppSettingsToJson(this);

  @override
  List<Object?> get props => [id, displaySettings, language, feedPreferences];

  /// Creates a copy of this [UserAppSettings] but with the given fields
  /// replaced with the new values.
  UserAppSettings copyWith({
    String? id,
    DisplaySettings? displaySettings,
    AppLanguage? language,
    FeedDisplayPreferences? feedPreferences,
  }) {
    return UserAppSettings(
      id: id ?? this.id,
      displaySettings: displaySettings ?? this.displaySettings,
      language: language ?? this.language,
      feedPreferences: feedPreferences ?? this.feedPreferences,
    );
  }
}
