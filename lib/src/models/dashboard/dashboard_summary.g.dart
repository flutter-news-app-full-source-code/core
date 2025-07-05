// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardSummary _$DashboardSummaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DashboardSummary',
      json,
      ($checkedConvert) {
        final val = DashboardSummary(
          headlineCount: $checkedConvert(
            'headline_count',
            (v) => (v as num).toInt(),
          ),
          categoryCount: $checkedConvert(
            'category_count',
            (v) => (v as num).toInt(),
          ),
          sourceCount: $checkedConvert(
            'source_count',
            (v) => (v as num).toInt(),
          ),
          id: $checkedConvert('id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'headlineCount': 'headline_count',
        'categoryCount': 'category_count',
        'sourceCount': 'source_count',
      },
    );

Map<String, dynamic> _$DashboardSummaryToJson(DashboardSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'headline_count': instance.headlineCount,
      'category_count': instance.categoryCount,
      'source_count': instance.sourceCount,
    };
