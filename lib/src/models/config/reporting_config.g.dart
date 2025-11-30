// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporting_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportingConfig _$ReportingConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReportingConfig', json, ($checkedConvert) {
      final val = ReportingConfig(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        headlineReportingEnabled: $checkedConvert(
          'headlineReportingEnabled',
          (v) => v as bool,
        ),
        sourceReportingEnabled: $checkedConvert(
          'sourceReportingEnabled',
          (v) => v as bool,
        ),
        commentReportingEnabled: $checkedConvert(
          'commentReportingEnabled',
          (v) => v as bool,
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReportingConfigToJson(ReportingConfig instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'headlineReportingEnabled': instance.headlineReportingEnabled,
      'sourceReportingEnabled': instance.sourceReportingEnabled,
      'commentReportingEnabled': instance.commentReportingEnabled,
    };
