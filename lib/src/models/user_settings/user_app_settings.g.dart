// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAppSettings _$UserAppSettingsFromJson(Map<String, dynamic> json) =>
    UserAppSettings(
      id: json['id'] as String,
      displaySettings: json['displaySettings'] == null
          ? null
          : DisplaySettings.fromJson(
              json['displaySettings'] as Map<String, dynamic>),
      language: json['language'] as String?,
      feedPreferences: json['feedPreferences'] == null
          ? null
          : FeedDisplayPreferences.fromJson(
              json['feedPreferences'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAppSettingsToJson(UserAppSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displaySettings': instance.displaySettings.toJson(),
      'language': instance.language,
      'feedPreferences': instance.feedPreferences.toJson(),
    };
