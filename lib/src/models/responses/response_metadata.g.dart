// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseMetadata _$ResponseMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ResponseMetadata', json, ($checkedConvert) {
      final val = ResponseMetadata(
        requestId: $checkedConvert('requestId', (v) => v as String),
        timestamp: $checkedConvert(
          'timestamp',
          (v) => DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ResponseMetadataToJson(ResponseMetadata instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'timestamp': instance.timestamp.toIso8601String(),
    };
