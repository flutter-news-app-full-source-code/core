// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_item_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$FeedItemActionToJson(FeedItemAction instance) =>
    <String, dynamic>{
      if (instance.stringify case final value?) 'stringify': value,
      'hash_code': instance.hashCode,
      'type': instance.type,
      'props': instance.props,
    };

OpenInternalContent _$OpenInternalContentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OpenInternalContent',
      json,
      ($checkedConvert) {
        final val = OpenInternalContent(
          contentId: $checkedConvert('content_id', (v) => v as String),
          contentType: $checkedConvert(
              'content_type', (v) => $enumDecode(_$ContentTypeEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'contentId': 'content_id',
        'contentType': 'content_type'
      },
    );

Map<String, dynamic> _$OpenInternalContentToJson(
        OpenInternalContent instance) =>
    <String, dynamic>{
      'content_id': instance.contentId,
      'content_type': _$ContentTypeEnumMap[instance.contentType]!,
    };

const _$ContentTypeEnumMap = {
  ContentType.headline: 'headline',
  ContentType.category: 'category',
  ContentType.source: 'source',
  ContentType.country: 'country',
};

ShowInterstitialThenOpenInternalContent
    _$ShowInterstitialThenOpenInternalContentFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'ShowInterstitialThenOpenInternalContent',
          json,
          ($checkedConvert) {
            final val = ShowInterstitialThenOpenInternalContent(
              contentId: $checkedConvert('content_id', (v) => v as String),
              contentType: $checkedConvert(
                  'content_type', (v) => $enumDecode(_$ContentTypeEnumMap, v)),
            );
            return val;
          },
          fieldKeyMap: const {
            'contentId': 'content_id',
            'contentType': 'content_type'
          },
        );

Map<String, dynamic> _$ShowInterstitialThenOpenInternalContentToJson(
        ShowInterstitialThenOpenInternalContent instance) =>
    <String, dynamic>{
      'content_id': instance.contentId,
      'content_type': _$ContentTypeEnumMap[instance.contentType]!,
    };

OpenExternalUrl _$OpenExternalUrlFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OpenExternalUrl',
      json,
      ($checkedConvert) {
        final val = OpenExternalUrl(
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$OpenExternalUrlToJson(OpenExternalUrl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
