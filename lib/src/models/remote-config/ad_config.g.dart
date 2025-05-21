// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdConfig _$AdConfigFromJson(Map<String, dynamic> json) => AdConfig(
  guestAdFrequency: (json['guestAdFrequency'] as num).toInt(),
  guestAdPlacementInterval: (json['guestAdPlacementInterval'] as num).toInt(),
  authenticatedAdFrequency: (json['authenticatedAdFrequency'] as num).toInt(),
  authenticatedAdPlacementInterval:
      (json['authenticatedAdPlacementInterval'] as num).toInt(),
  premiumAdFrequency: (json['premiumAdFrequency'] as num).toInt(),
  premiumAdPlacementInterval:
      (json['premiumAdPlacementInterval'] as num).toInt(),
);

Map<String, dynamic> _$AdConfigToJson(AdConfig instance) => <String, dynamic>{
  'guestAdFrequency': instance.guestAdFrequency,
  'guestAdPlacementInterval': instance.guestAdPlacementInterval,
  'authenticatedAdFrequency': instance.authenticatedAdFrequency,
  'authenticatedAdPlacementInterval': instance.authenticatedAdPlacementInterval,
  'premiumAdFrequency': instance.premiumAdFrequency,
  'premiumAdPlacementInterval': instance.premiumAdPlacementInterval,
};
