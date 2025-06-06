// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedResponse<T> _$PaginatedResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => $checkedCreate('PaginatedResponse', json, ($checkedConvert) {
  final val = PaginatedResponse<T>(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>).map(fromJsonT).toList(),
    ),
    cursor: $checkedConvert('cursor', (v) => v as String?),
    hasMore: $checkedConvert('has_more', (v) => v as bool),
  );
  return val;
}, fieldKeyMap: const {'hasMore': 'has_more'});

Map<String, dynamic> _$PaginatedResponseToJson<T>(
  PaginatedResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'items': instance.items.map(toJsonT).toList(),
  if (instance.cursor case final value?) 'cursor': value,
  'has_more': instance.hasMore,
};
