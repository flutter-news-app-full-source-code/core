import 'package:core/src/models/config/app_review_config.dart';
import 'package:core/src/models/config/engagement_config.dart';
import 'package:core/src/models/config/reporting_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'community_config.g.dart';

/// {@template community_config}
/// A container for all community and user-generated content features.
///
/// This includes configurations for engagement (reactions, comments),
/// content reporting, and the app review funnel.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class CommunityConfig extends Equatable {
  /// {@macro community_config}
  const CommunityConfig({
    required this.engagement,
    required this.reporting,
    required this.appReview,
  });

  /// Creates a [CommunityConfig] from JSON data.
  factory CommunityConfig.fromJson(Map<String, dynamic> json) =>
      _$CommunityConfigFromJson(json);

  /// Configuration for user engagement features (reactions, comments).
  final EngagementConfig engagement;

  /// Configuration for user content reporting features.
  final ReportingConfig reporting;

  /// Configuration for the smart app review funnel.
  final AppReviewConfig appReview;

  /// Converts this [CommunityConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$CommunityConfigToJson(this);

  @override
  List<Object> get props => [engagement, reporting, appReview];

  /// Creates a copy of this [CommunityConfig] but with the given fields
  /// replaced with the new values.
  CommunityConfig copyWith({
    EngagementConfig? engagement,
    ReportingConfig? reporting,
    AppReviewConfig? appReview,
  }) {
    return CommunityConfig(
      engagement: engagement ?? this.engagement,
      reporting: reporting ?? this.reporting,
      appReview: appReview ?? this.appReview,
    );
  }
}
