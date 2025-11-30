// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppReview _$AppReviewFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AppReview', json, ($checkedConvert) {
  final val = AppReview(
    id: $checkedConvert('id', (v) => v as String),
    userId: $checkedConvert('userId', (v) => v as String),
    initialFeedback: $checkedConvert(
      'initialFeedback',
      (v) => $enumDecode(_$InitialAppReviewFeedbackEnumMap, v),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    negativeFeedbackHistory: $checkedConvert(
      'negativeFeedbackHistory',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => NegativeFeedback.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    ),
    wasStoreReviewRequested: $checkedConvert(
      'wasStoreReviewRequested',
      (v) => v as bool? ?? false,
    ),
  );
  return val;
});

Map<String, dynamic> _$AppReviewToJson(AppReview instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'initialFeedback':
      _$InitialAppReviewFeedbackEnumMap[instance.initialFeedback]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'wasStoreReviewRequested': instance.wasStoreReviewRequested,
  'negativeFeedbackHistory': instance.negativeFeedbackHistory
      .map((e) => e.toJson())
      .toList(),
};

const _$InitialAppReviewFeedbackEnumMap = {
  InitialAppReviewFeedback.positive: 'positive',
  InitialAppReviewFeedback.negative: 'negative',
};
