import 'package:json_annotation/json_annotation.dart';

/// {@template engagement_mode}
/// Defines the engagement features available to users.
/// {@endtemplate}
@JsonEnum()
enum EngagementMode {
  /// Users can only react to headlines.
  @JsonValue('reactionsOnly')
  reactionsOnly,

  /// Users can both react and comment on headlines.
  @JsonValue('reactionsAndComments')
  reactionsAndComments,
}
