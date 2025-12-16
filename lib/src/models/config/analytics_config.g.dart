// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsConfig _$AnalyticsConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AnalyticsConfig', json, ($checkedConvert) {
      final val = AnalyticsConfig(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        activeProvider: $checkedConvert(
          'activeProvider',
          (v) => $enumDecode(_$AnalyticsProviderEnumMap, v),
        ),
        disabledEvents: $checkedConvert(
          'disabledEvents',
          (v) => v == null ? {} : _disabledEventsFromJson(v as List),
        ),
        eventSamplingRates: $checkedConvert(
          'eventSamplingRates',
          (v) => v == null
              ? {}
              : _eventSamplingRatesFromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AnalyticsConfigToJson(
  AnalyticsConfig instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'activeProvider': _$AnalyticsProviderEnumMap[instance.activeProvider]!,
  'disabledEvents': _disabledEventsToJson(instance.disabledEvents),
  'eventSamplingRates': _eventSamplingRatesToJson(instance.eventSamplingRates),
};

const _$AnalyticsProviderEnumMap = {
  AnalyticsProvider.firebase: 'firebase',
  AnalyticsProvider.mixpanel: 'mixpanel',
  AnalyticsProvider.demo: 'demo',
};
