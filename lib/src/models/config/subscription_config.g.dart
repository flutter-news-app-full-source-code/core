// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionConfig _$SubscriptionConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SubscriptionConfig', json, ($checkedConvert) {
      final val = SubscriptionConfig(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        monthlyPlan: $checkedConvert(
          'monthlyPlan',
          (v) => PlanDetails.fromJson(v as Map<String, dynamic>),
        ),
        annualPlan: $checkedConvert(
          'annualPlan',
          (v) => PlanDetails.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SubscriptionConfigToJson(SubscriptionConfig instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'monthlyPlan': instance.monthlyPlan.toJson(),
      'annualPlan': instance.annualPlan.toJson(),
    };
