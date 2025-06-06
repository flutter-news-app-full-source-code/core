// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseMetadata _$ResponseMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ResponseMetadata', json, ($checkedConvert) {
      final val = ResponseMetadata(
        requestId: $checkedConvert('request_id', (v) => v as String?),
        timestamp: $checkedConvert(
          'timestamp',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    }, fieldKeyMap: const {'requestId': 'request_id'});

Map<String, dynamic> _$ResponseMetadataToJson(ResponseMetadata instance) =>
    <String, dynamic>{
      if (instance.requestId case final value?) 'request_id': value,
      if (instance.timestamp?.toIso8601String() case final value?)
        'timestamp': value,
    };
