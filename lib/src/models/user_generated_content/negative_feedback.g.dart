// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'negative_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NegativeFeedback _$NegativeFeedbackFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NegativeFeedback', json, ($checkedConvert) {
      final val = NegativeFeedback(
        providedAt: $checkedConvert(
          'providedAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        reason: $checkedConvert('reason', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$NegativeFeedbackToJson(NegativeFeedback instance) =>
    <String, dynamic>{
      'providedAt': dateTimeToJson(instance.providedAt),
      'reason': instance.reason,
    };
