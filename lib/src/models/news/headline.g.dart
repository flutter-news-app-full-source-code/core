// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Headline _$HeadlineFromJson(Map<String, dynamic> json) => Headline(
  title: json['title'] as String,
  description: json['description'] as String?,
  url: json['url'] as String?,
  imageUrl: json['imageUrl'] as String?,
  publishedAt: _dateTimeFromJson(json['publishedAt'] as String?),
  source:
      json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
  category:
      json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
  id: json['id'] as String?,
);

Map<String, dynamic> _$HeadlineToJson(Headline instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  if (instance.description case final value?) 'description': value,
  if (instance.url case final value?) 'url': value,
  if (instance.imageUrl case final value?) 'imageUrl': value,
  if (instance.publishedAt?.toIso8601String() case final value?)
    'publishedAt': value,
  if (instance.source?.toJson() case final value?) 'source': value,
  if (instance.category?.toJson() case final value?) 'category': value,
};
