// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanDetails _$PlanDetailsFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PlanDetails',
  json,
  ($checkedConvert) {
    final val = PlanDetails(
      enabled: $checkedConvert('enabled', (v) => v as bool),
      isRecommended: $checkedConvert('isRecommended', (v) => v as bool),
      appleProductId: $checkedConvert('appleProductId', (v) => v as String?),
      googleProductId: $checkedConvert('googleProductId', (v) => v as String?),
      stripePriceId: $checkedConvert('stripePriceId', (v) => v as String?),
    );
    return val;
  },
);

Map<String, dynamic> _$PlanDetailsToJson(PlanDetails instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'isRecommended': instance.isRecommended,
      'appleProductId': instance.appleProductId,
      'googleProductId': instance.googleProductId,
      'stripePriceId': instance.stripePriceId,
    };
