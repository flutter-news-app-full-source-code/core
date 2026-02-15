// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_upload_url_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestUploadUrlResponse _$RequestUploadUrlResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RequestUploadUrlResponse', json, ($checkedConvert) {
  final val = RequestUploadUrlResponse(
    signedUrl: $checkedConvert('signedUrl', (v) => v as String),
    mediaAssetId: $checkedConvert('mediaAssetId', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$RequestUploadUrlResponseToJson(
  RequestUploadUrlResponse instance,
) => <String, dynamic>{
  'signedUrl': instance.signedUrl,
  'mediaAssetId': instance.mediaAssetId,
};
