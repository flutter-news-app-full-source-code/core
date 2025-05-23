// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdConfig _$AdConfigFromJson(Map<String, dynamic> json) => $checkedCreate(
      'AdConfig',
      json,
      ($checkedConvert) {
        final val = AdConfig(
          guestAdFrequency:
              $checkedConvert('guest_ad_frequency', (v) => (v as num).toInt()),
          guestAdPlacementInterval: $checkedConvert(
              'guest_ad_placement_interval', (v) => (v as num).toInt()),
          authenticatedAdFrequency: $checkedConvert(
              'authenticated_ad_frequency', (v) => (v as num).toInt()),
          authenticatedAdPlacementInterval: $checkedConvert(
              'authenticated_ad_placement_interval', (v) => (v as num).toInt()),
          premiumAdFrequency: $checkedConvert(
              'premium_ad_frequency', (v) => (v as num).toInt()),
          premiumAdPlacementInterval: $checkedConvert(
              'premium_ad_placement_interval', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'guestAdFrequency': 'guest_ad_frequency',
        'guestAdPlacementInterval': 'guest_ad_placement_interval',
        'authenticatedAdFrequency': 'authenticated_ad_frequency',
        'authenticatedAdPlacementInterval':
            'authenticated_ad_placement_interval',
        'premiumAdFrequency': 'premium_ad_frequency',
        'premiumAdPlacementInterval': 'premium_ad_placement_interval'
      },
    );

Map<String, dynamic> _$AdConfigToJson(AdConfig instance) => <String, dynamic>{
      'guest_ad_frequency': instance.guestAdFrequency,
      'guest_ad_placement_interval': instance.guestAdPlacementInterval,
      'authenticated_ad_frequency': instance.authenticatedAdFrequency,
      'authenticated_ad_placement_interval':
          instance.authenticatedAdPlacementInterval,
      'premium_ad_frequency': instance.premiumAdFrequency,
      'premium_ad_placement_interval': instance.premiumAdPlacementInterval,
    };
