import 'package:json_annotation/json_annotation.dart';

/// {@template reportable_entity}
/// Defines the types of entities that can be reported by users.
///
/// This enum acts as a discriminator in the `Report` model to identify
/// what kind of content the report refers to.
/// {@endtemplate}
@JsonEnum()
enum ReportableEntity {
  /// The report is for a news headline.
  @JsonValue('headline')
  headline,

  /// The report is for a news source.
  @JsonValue('source')
  source,

  /// The report is for a user-submitted comment.
  @JsonValue('comment')
  comment,
}
