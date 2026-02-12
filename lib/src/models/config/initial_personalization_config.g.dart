// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_personalization_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitialPersonalizationConfig _$InitialPersonalizationConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InitialPersonalizationConfig', json, ($checkedConvert) {
  final val = InitialPersonalizationConfig(
    isEnabled: $checkedConvert('isEnabled', (v) => v as bool),
    isSkippable: $checkedConvert('isSkippable', (v) => v as bool),
    isCountrySelectionEnabled: $checkedConvert(
      'isCountrySelectionEnabled',
      (v) => v as bool,
    ),
    isTopicSelectionEnabled: $checkedConvert(
      'isTopicSelectionEnabled',
      (v) => v as bool,
    ),
    isSourceSelectionEnabled: $checkedConvert(
      'isSourceSelectionEnabled',
      (v) => v as bool,
    ),
    minSelectionsRequired: $checkedConvert(
      'minSelectionsRequired',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$InitialPersonalizationConfigToJson(
  InitialPersonalizationConfig instance,
) => <String, dynamic>{
  'isEnabled': instance.isEnabled,
  'isSkippable': instance.isSkippable,
  'isCountrySelectionEnabled': instance.isCountrySelectionEnabled,
  'isTopicSelectionEnabled': instance.isTopicSelectionEnabled,
  'isSourceSelectionEnabled': instance.isSourceSelectionEnabled,
  'minSelectionsRequired': instance.minSelectionsRequired,
};
