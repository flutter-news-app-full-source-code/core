import 'package:json_annotation/json_annotation.dart';

/// {@template analytics_providers}
/// Defines the supported analytics service providers.
///
/// This allows for dynamically switching between providers based on remote
/// configuration.
/// {@endtemplate}
@JsonEnum()
enum AnalyticsProviders {
  /// Firebase Analytics.
  @JsonValue('firebase')
  firebase,

  /// Mixpanel Analytics.
  @JsonValue('mixpanel')
  mixpanel,
}
