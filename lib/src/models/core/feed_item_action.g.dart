// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas

part of 'feed_item_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$FeedItemActionToJson(FeedItemAction instance) =>
    <String, dynamic>{
      'stringify': instance.stringify,
      'hashCode': instance.hashCode,
      'type': instance.type,
      'props': instance.props,
    };

OpenInternalContent _$OpenInternalContentFromJson(Map<String, dynamic> json) =>
    OpenInternalContent(
      contentId: json['contentId'] as String,
      contentType: $enumDecode(_$ContentTypeEnumMap, json['contentType']),
    );

Map<String, dynamic> _$OpenInternalContentToJson(
        OpenInternalContent instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
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
        ShowInterstitialThenOpenInternalContent(
          contentId: json['contentId'] as String,
          contentType: $enumDecode(_$ContentTypeEnumMap, json['contentType']),
        );

Map<String, dynamic> _$ShowInterstitialThenOpenInternalContentToJson(
        ShowInterstitialThenOpenInternalContent instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
    };

OpenExternalUrl _$OpenExternalUrlFromJson(Map<String, dynamic> json) =>
    OpenExternalUrl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$OpenExternalUrlToJson(OpenExternalUrl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
