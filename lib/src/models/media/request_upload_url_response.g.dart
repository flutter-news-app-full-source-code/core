// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_upload_url_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestUploadUrlResponse _$RequestUploadUrlResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RequestUploadUrlResponse', json, ($checkedConvert) {
  final val = RequestUploadUrlResponse(
    url: $checkedConvert('url', (v) => v as String),
    fields: $checkedConvert(
      'fields',
      (v) => Map<String, String>.from(v as Map),
    ),
    mediaAssetId: $checkedConvert('mediaAssetId', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$RequestUploadUrlResponseToJson(
  RequestUploadUrlResponse instance,
) => <String, dynamic>{
  'url': instance.url,
  'fields': instance.fields,
  'mediaAssetId': instance.mediaAssetId,
};
