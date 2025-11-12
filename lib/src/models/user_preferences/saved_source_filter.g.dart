// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_source_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedSourceFilter _$SavedSourceFilterFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SavedSourceFilter', json, ($checkedConvert) {
      final val = SavedSourceFilter(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        criteria: $checkedConvert(
          'criteria',
          (v) => SourceFilterCriteria.fromJson(v as Map<String, dynamic>),
        ),
        isPinned: $checkedConvert('isPinned', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$SavedSourceFilterToJson(SavedSourceFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'criteria': instance.criteria.toJson(),
      'isPinned': instance.isPinned,
    };
