import 'package:json_annotation/json_annotation.dart';

/// {@template headline_report_reason}
/// Defines the specific reasons a user can provide for reporting a headline.
/// {@endtemplate}
@JsonEnum()
enum HeadlineReportReason {
  /// The content is factually incorrect or considered fake news.
  @JsonValue('misinformationOrFakeNews')
  misinformationOrFakeNews,

  /// The headline is clickbait or does not reflect the article's content.
  @JsonValue('clickbaitTitle')
  clickbaitTitle,

  /// The content contains hate speech, graphic violence, or other inappropriate
  /// material.
  @JsonValue('offensiveOrHateSpeech')
  offensiveOrHateSpeech,

  /// The link leads to advertising, phishing, or fraudulent content.
  @JsonValue('spamOrScam')
  spamOrScam,

  /// The article URL does not work.
  @JsonValue('brokenLink')
  brokenLink,

  /// The content requires a subscription that was not disclosed.
  @JsonValue('paywalled')
  paywalled,
}
