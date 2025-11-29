import 'package:json_annotation/json_annotation.dart';

/// {@template source_report_reason}
/// Defines the specific reasons a user can provide for reporting a news source.
///
/// These reasons are designed to be actionable and can provide data to
/// influence other systems, like an automated content scraper's scoring.
/// {@endtemplate}
@JsonEnum()
enum SourceReportReason {
  /// The source consistently produces poor, biased, or unreliable content.
  @JsonValue('lowQualityJournalism')
  lowQualityJournalism,

  /// The source's website is unusable due to excessive ads or popups.
  @JsonValue('highAdDensity')
  highAdDensity,

  /// The source often requires a subscription to view content.
  @JsonValue('frequentPaywalls')
  frequentPaywalls,

  /// The source is pretending to be another entity.
  @JsonValue('impersonation')
  impersonation,

  /// The source has a pattern of publishing fake news or misinformation.
  @JsonValue('spreadsMisinformation')
  spreadsMisinformation,
}
