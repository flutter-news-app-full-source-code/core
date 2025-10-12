// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedFilter _$SavedFilterFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SavedFilter', json, ($checkedConvert) {
      final val = SavedFilter(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        topics: $checkedConvert(
          'topics',
          (v) => (v as List<dynamic>)
              .map((e) => Topic.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        sources: $checkedConvert(
          'sources',
          (v) => (v as List<dynamic>)
              .map((e) => Source.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        countries: $checkedConvert(
          'countries',
          (v) => (v as List<dynamic>)
              .map((e) => Country.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SavedFilterToJson(SavedFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'topics': instance.topics.map((e) => e.toJson()).toList(),
      'sources': instance.sources.map((e) => e.toJson()).toList(),
      'countries': instance.countries.map((e) => e.toJson()).toList(),
    };
