// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardChartData _$DashboardChartDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DashboardChartData', json, ($checkedConvert) {
      final val = DashboardChartData(
        id: $checkedConvert('id', (v) => v as String),
        dataPoints: $checkedConvert(
          'dataPoints',
          (v) => (v as List<dynamic>)
              .map((e) => DataPoint.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DashboardChartDataToJson(DashboardChartData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dataPoints': instance.dataPoints.map((e) => e.toJson()).toList(),
    };
