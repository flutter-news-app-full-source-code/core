// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_kpi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardKpi _$DashboardKpiFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DashboardKpi', json, ($checkedConvert) {
      final val = DashboardKpi(
        id: $checkedConvert('id', (v) => v as String),
        label: $checkedConvert('label', (v) => v as String),
        value: $checkedConvert('value', (v) => v as num),
        trend: $checkedConvert('trend', (v) => v as String),
        timePeriod: $checkedConvert('timePeriod', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$DashboardKpiToJson(DashboardKpi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'value': instance.value,
      'trend': instance.trend,
      'timePeriod': instance.timePeriod,
    };
