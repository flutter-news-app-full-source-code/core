// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => AppConfig(
      id: json['id'] as String,
      userPreferenceLimits: json['userPreferenceLimits'] == null
          ? null
          : UserPreferenceLimits.fromJson(
              json['userPreferenceLimits'] as Map<String, dynamic>,
            ),
      adConfig: json['adConfig'] == null
          ? null
          : AdConfig.fromJson(json['adConfig'] as Map<String, dynamic>),
      engagementRules: (json['engagementRules'] as List<dynamic>?)
          ?.map((e) => EngagementRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggestionRules: (json['suggestionRules'] as List<dynamic>?)
          ?.map((e) => SuggestionRule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
      'id': instance.id,
      'userPreferenceLimits': instance.userPreferenceLimits.toJson(),
      'adConfig': instance.adConfig.toJson(),
      'engagementRules':
          instance.engagementRules.map((e) => e.toJson()).toList(),
      'suggestionRules':
          instance.suggestionRules.map((e) => e.toJson()).toList(),
    };
