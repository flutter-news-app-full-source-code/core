// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessApiResponse<T> _$SuccessApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => $checkedCreate('SuccessApiResponse', json, ($checkedConvert) {
  final val = SuccessApiResponse<T>(
    data: $checkedConvert('data', (v) => fromJsonT(v)),
    metadata: $checkedConvert(
      'metadata',
      (v) => ResponseMetadata.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$SuccessApiResponseToJson<T>(
  SuccessApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': toJsonT(instance.data),
  'metadata': instance.metadata.toJson(),
};
