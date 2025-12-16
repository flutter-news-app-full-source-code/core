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
    feedback: $checkedConvert(
      'feedback',
      (v) => $enumDecode(_$AppReviewFeedbackEnumMap, v),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    wasStoreReviewRequested: $checkedConvert(
      'wasStoreReviewRequested',
      (v) => v as bool? ?? false,
    ),
    feedbackDetails: $checkedConvert('feedbackDetails', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$AppReviewToJson(AppReview instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'feedback': _$AppReviewFeedbackEnumMap[instance.feedback]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'wasStoreReviewRequested': instance.wasStoreReviewRequested,
  'feedbackDetails': instance.feedbackDetails,
};

const _$AppReviewFeedbackEnumMap = {
  AppReviewFeedback.positive: 'positive',
  AppReviewFeedback.negative: 'negative',
};
