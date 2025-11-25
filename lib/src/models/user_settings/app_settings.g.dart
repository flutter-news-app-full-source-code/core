// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AppSettings', json, ($checkedConvert) {
      final val = AppSettings(
        id: $checkedConvert('id', (v) => v as String),
        language: $checkedConvert(
          'language',
          (v) => Language.fromJson(v as Map<String, dynamic>),
        ),
        displaySettings: $checkedConvert(
          'displaySettings',
          (v) => DisplaySettings.fromJson(v as Map<String, dynamic>),
        ),
        feedSettings: $checkedConvert(
          'feedSettings',
          (v) => FeedSettings.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AppSettingsToJson(AppSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language': instance.language.toJson(),
      'displaySettings': instance.displaySettings.toJson(),
      'feedSettings': instance.feedSettings.toJson(),
    };
