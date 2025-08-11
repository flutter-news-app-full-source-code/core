// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAppSettings _$UserAppSettingsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserAppSettings', json, ($checkedConvert) {
      final val = UserAppSettings(
        id: $checkedConvert('id', (v) => v as String),
        displaySettings: $checkedConvert(
          'displaySettings',
          (v) => DisplaySettings.fromJson(v as Map<String, dynamic>),
        ),
        language: $checkedConvert(
          'language',
          (v) => Language.fromJson(v as Map<String, dynamic>),
        ),
        feedPreferences: $checkedConvert(
          'feedPreferences',
          (v) => FeedDisplayPreferences.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserAppSettingsToJson(UserAppSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displaySettings': instance.displaySettings.toJson(),
      'language': instance.language.toJson(),
      'feedPreferences': instance.feedPreferences.toJson(),
    };
