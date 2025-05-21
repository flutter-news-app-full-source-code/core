import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/user-settings/app_language.dart';
import 'package:ht_shared/src/models/user-settings/display_settings.dart';

/// {@template user_app_settings}
/// Represents a collection of user-specific application settings,
/// including display preferences and language selection.
///
/// This model unifies settings that are tied to a specific user,
/// making it suitable for management via a generic data client.
/// {@endtemplate}
class UserAppSettings extends Equatable {
  /// {@macro user_app_settings}
  ///
  /// Creates a new instance of [UserAppSettings].
  ///
  /// An [id] is required, typically the user's unique identifier.
  /// Provides sensible defaults for nested settings if not specified.
  const UserAppSettings({
    required this.id,
    DisplaySettings? displaySettings,
    AppLanguage? language,
  })  : displaySettings = displaySettings ?? const DisplaySettings(),
        language = language ?? 'en'; // Default language is English

  /// Factory method to create a [UserAppSettings] instance from a JSON map.
  factory UserAppSettings.fromJson(Map<String, dynamic> json) {
    return UserAppSettings(
      id: json['id'] as String,
      displaySettings: json['displaySettings'] == null
          ? null
          : DisplaySettings.fromJson(
              json['displaySettings'] as Map<String, dynamic>,
            ),
      language: json['language'] as String?,
    );
  }

  /// The unique identifier for the user settings, typically the user's ID.
  final String id;

  /// User-configurable settings related to the application's visual appearance.
  final DisplaySettings displaySettings;

  /// The selected application language code (ISO 639-1).
  final AppLanguage language;

  /// Converts this [UserAppSettings] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'displaySettings': displaySettings.toJson(),
      'language': language,
    }..removeWhere((key, value) => value == null);
  }

  @override
  List<Object?> get props => [id, displaySettings, language];

  /// Creates a copy of this [UserAppSettings] but with the given fields
  /// replaced with the new values.
  UserAppSettings copyWith({
    String? id,
    DisplaySettings? displaySettings,
    AppLanguage? language,
  }) {
    return UserAppSettings(
      id: id ?? this.id,
      displaySettings: displaySettings ?? this.displaySettings,
      language: language ?? this.language,
    );
  }
}
