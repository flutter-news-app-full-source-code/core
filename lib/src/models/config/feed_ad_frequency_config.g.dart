// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_ad_frequency_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedAdFrequencyConfig _$FeedAdFrequencyConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FeedAdFrequencyConfig', json, ($checkedConvert) {
  final val = FeedAdFrequencyConfig(
    adFrequency: $checkedConvert('adFrequency', (v) => (v as num).toInt()),
    adPlacementInterval: $checkedConvert(
      'adPlacementInterval',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$FeedAdFrequencyConfigToJson(
  FeedAdFrequencyConfig instance,
) => <String, dynamic>{
  'adFrequency': instance.adFrequency,
  'adPlacementInterval': instance.adPlacementInterval,
};
