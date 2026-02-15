// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_upload_url_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestUploadUrlRequest _$RequestUploadUrlRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RequestUploadUrlRequest', json, ($checkedConvert) {
  final val = RequestUploadUrlRequest(
    fileName: $checkedConvert('fileName', (v) => v as String),
    contentType: $checkedConvert('contentType', (v) => v as String),
    purpose: $checkedConvert(
      'purpose',
      (v) => $enumDecode(_$MediaAssetPurposeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$RequestUploadUrlRequestToJson(
  RequestUploadUrlRequest instance,
) => <String, dynamic>{
  'fileName': instance.fileName,
  'contentType': instance.contentType,
  'purpose': _$MediaAssetPurposeEnumMap[instance.purpose]!,
};

const _$MediaAssetPurposeEnumMap = {
  MediaAssetPurpose.userProfilePhoto: 'userProfilePhoto',
  MediaAssetPurpose.headlineImage: 'headlineImage',
  MediaAssetPurpose.topicImage: 'topicImage',
  MediaAssetPurpose.sourceImage: 'sourceImage',
};
