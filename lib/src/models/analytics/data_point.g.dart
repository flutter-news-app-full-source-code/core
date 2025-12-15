// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPoint _$DataPointFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DataPoint', json, ($checkedConvert) {
      final val = DataPoint(
        timestamp: $checkedConvert(
          'timestamp',
          (v) => dateTimeFromJson(v as String?),
        ),
        value: $checkedConvert('value', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$DataPointToJson(DataPoint instance) => <String, dynamic>{
  'timestamp': dateTimeToJson(instance.timestamp),
  'value': instance.value,
};
