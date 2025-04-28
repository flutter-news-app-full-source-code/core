// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseMetadata _$ResponseMetadataFromJson(Map<String, dynamic> json) =>
    ResponseMetadata(
      requestId: json['request_id'] as String?,
      timestamp:
          json['timestamp'] == null
              ? null
              : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$ResponseMetadataToJson(ResponseMetadata instance) =>
    <String, dynamic>{
      if (instance.requestId case final value?) 'request_id': value,
      if (instance.timestamp?.toIso8601String() case final value?)
        'timestamp': value,
    };
