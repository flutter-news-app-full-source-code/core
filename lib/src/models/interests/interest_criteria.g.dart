// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_criteria.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterestCriteria _$InterestCriteriaFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InterestCriteria', json, ($checkedConvert) {
      final val = InterestCriteria(
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

Map<String, dynamic> _$InterestCriteriaToJson(InterestCriteria instance) =>
    <String, dynamic>{
      'topics': instance.topics.map((e) => e.toJson()).toList(),
      'sources': instance.sources.map((e) => e.toJson()).toList(),
      'countries': instance.countries.map((e) => e.toJson()).toList(),
    };
