// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => $checkedCreate(
      'AppConfig',
      json,
      ($checkedConvert) {
        final val = AppConfig(
          id: $checkedConvert('id', (v) => v as String),
          userPreferenceLimits: $checkedConvert(
              'user_preference_limits',
              (v) => v == null
                  ? null
                  : UserPreferenceLimits.fromJson(v as Map<String, dynamic>)),
          adConfig: $checkedConvert(
              'ad_config',
              (v) => v == null
                  ? null
                  : AdConfig.fromJson(v as Map<String, dynamic>)),
          engagementRules: $checkedConvert(
              'engagement_rules',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => EngagementRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
          suggestionRules: $checkedConvert(
              'suggestion_rules',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => SuggestionRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'userPreferenceLimits': 'user_preference_limits',
        'adConfig': 'ad_config',
        'engagementRules': 'engagement_rules',
        'suggestionRules': 'suggestion_rules'
      },
    );

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
      'id': instance.id,
      'user_preference_limits': instance.userPreferenceLimits.toJson(),
      'ad_config': instance.adConfig.toJson(),
      'engagement_rules':
          instance.engagementRules.map((e) => e.toJson()).toList(),
      'suggestion_rules':
          instance.suggestionRules.map((e) => e.toJson()).toList(),
    };
