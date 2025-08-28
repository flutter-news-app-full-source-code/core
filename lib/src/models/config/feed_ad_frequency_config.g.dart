// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_ad_frequency_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedAdFrequencyConfig _$FeedAdFrequencyConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FeedAdFrequencyConfig', json, ($checkedConvert) {
  final val = FeedAdFrequencyConfig(
    guestAdFrequency: $checkedConvert(
      'guestAdFrequency',
      (v) => (v as num).toInt(),
    ),
    guestAdPlacementInterval: $checkedConvert(
      'guestAdPlacementInterval',
      (v) => (v as num).toInt(),
    ),
    authenticatedAdFrequency: $checkedConvert(
      'authenticatedAdFrequency',
      (v) => (v as num).toInt(),
    ),
    authenticatedAdPlacementInterval: $checkedConvert(
      'authenticatedAdPlacementInterval',
      (v) => (v as num).toInt(),
    ),
    premiumAdFrequency: $checkedConvert(
      'premiumAdFrequency',
      (v) => (v as num).toInt(),
    ),
    premiumAdPlacementInterval: $checkedConvert(
      'premiumAdPlacementInterval',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$FeedAdFrequencyConfigToJson(
  FeedAdFrequencyConfig instance,
) => <String, dynamic>{
  'guestAdFrequency': instance.guestAdFrequency,
  'guestAdPlacementInterval': instance.guestAdPlacementInterval,
  'authenticatedAdFrequency': instance.authenticatedAdFrequency,
  'authenticatedAdPlacementInterval': instance.authenticatedAdPlacementInterval,
  'premiumAdFrequency': instance.premiumAdFrequency,
  'premiumAdPlacementInterval': instance.premiumAdPlacementInterval,
};
