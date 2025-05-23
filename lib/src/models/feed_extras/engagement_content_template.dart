import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/feed_extras/feed_template_types.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'engagement_content_template.g.dart';

/// {@template engagement_content_template}
/// Defines the static content for an engagement prompt.
/// The 'type' of an instance should match an [EngagementTemplateType] value.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class EngagementContentTemplate extends Equatable {
  /// {@macro engagement_content_template}
  const EngagementContentTemplate({
    required this.type,
    required this.title,
    this.description,
    this.callToActionText,
  });

  /// Creates an [EngagementContentTemplate] from JSON data.
  factory EngagementContentTemplate.fromJson(Map<String, dynamic> json) =>
      _$EngagementContentTemplateFromJson(json);

  /// The type of engagement template, matching an [EngagementTemplateType] value.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final EngagementTemplateType type;

  /// The main title or heading for the engagement content.
  final String title;

  /// An optional description providing more details.
  final String? description;

  /// The text for the call-to-action button or link.
  final String? callToActionText;

  /// Converts this [EngagementContentTemplate] instance to JSON data.
  Map<String, dynamic> toJson() => _$EngagementContentTemplateToJson(this);

  @override
  List<Object?> get props => [type, title, description, callToActionText];

  /// Creates a copy of this [EngagementContentTemplate] but with the given
  /// fields replaced with the new values.
  EngagementContentTemplate copyWith({
    EngagementTemplateType? type,
    String? title,
    String? description,
    String? callToActionText,
  }) {
    return EngagementContentTemplate(
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      callToActionText: callToActionText ?? this.callToActionText,
    );
  }
}
