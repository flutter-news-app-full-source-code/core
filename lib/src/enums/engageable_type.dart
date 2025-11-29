import 'package:json_annotation/json_annotation.dart';

/// {@template engageable_type}
/// Defines the types of entities that can be engaged with (reacted to or
/// commented on).
/// {@endtemplate}
@JsonEnum()
enum EngageableType {
  /// The engagement is for a news headline.
  @JsonValue('headline')
  headline,
}
