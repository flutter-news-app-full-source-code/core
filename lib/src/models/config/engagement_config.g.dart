// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngagementConfig _$EngagementConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('EngagementConfig', json, ($checkedConvert) {
      final val = EngagementConfig(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        engagementMode: $checkedConvert(
          'engagementMode',
          (v) => $enumDecode(_$EngagementModeEnumMap, v),
        ),
        aiModerationEnabled: $checkedConvert(
          'aiModerationEnabled',
          (v) => v as bool,
        ),
      );
      return val;
    });

Map<String, dynamic> _$EngagementConfigToJson(EngagementConfig instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'engagementMode': _$EngagementModeEnumMap[instance.engagementMode]!,
      'aiModerationEnabled': instance.aiModerationEnabled,
    };

const _$EngagementModeEnumMap = {
  EngagementMode.reactionsOnly: 'reactionsOnly',
  EngagementMode.reactionsAndComments: 'reactionsAndComments',
};
