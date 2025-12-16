// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPoint _$DataPointFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DataPoint', json, ($checkedConvert) {
      final val = DataPoint(
        value: $checkedConvert('value', (v) => v as num),
        timestamp: $checkedConvert(
          'timestamp',
          (v) => dateTimeFromJson(v as String?),
        ),
        label: $checkedConvert('label', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$DataPointToJson(DataPoint instance) => <String, dynamic>{
  'timestamp': nullableDateTimeToJson(instance.timestamp),
  'label': instance.label,
  'value': instance.value,
};
