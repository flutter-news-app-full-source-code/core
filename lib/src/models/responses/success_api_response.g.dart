// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessApiResponse<T> _$SuccessApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SuccessApiResponse<T>(
      data: fromJsonT(json['data']),
      metadata: json['metadata'] == null
          ? null
          : ResponseMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuccessApiResponseToJson<T>(
  SuccessApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      if (instance.metadata?.toJson() case final value?) 'metadata': value,
    };
