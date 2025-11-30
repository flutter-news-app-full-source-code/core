import 'package:json_annotation/json_annotation.dart';

/// {@template comment_report_reason}
/// Defines the specific reasons a user can provide for reporting a comment.
/// {@endtemplate}
@JsonEnum()
enum CommentReportReason {
  /// The comment is unsolicited advertising or promotion.
  @JsonValue('spamOrAdvertising')
  spamOrAdvertising,

  /// The comment contains abusive language, personal attacks, or bullying.
  @JsonValue('harassmentOrBullying')
  harassmentOrBullying,

  /// The comment targets certain groups with hateful language.
  @JsonValue('hateSpeech')
  hateSpeech,
}
