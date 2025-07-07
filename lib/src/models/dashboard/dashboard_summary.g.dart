// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardSummary _$DashboardSummaryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DashboardSummary', json, ($checkedConvert) {
  final val = DashboardSummary(
    id: $checkedConvert('id', (v) => v as String),
    headlineCount: $checkedConvert('headlineCount', (v) => (v as num).toInt()),
    categoryCount: $checkedConvert('categoryCount', (v) => (v as num).toInt()),
    sourceCount: $checkedConvert('sourceCount', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$DashboardSummaryToJson(DashboardSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'headlineCount': instance.headlineCount,
      'categoryCount': instance.categoryCount,
      'sourceCount': instance.sourceCount,
    };
