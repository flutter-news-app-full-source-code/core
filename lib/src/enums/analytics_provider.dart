import 'package:json_annotation/json_annotation.dart';

/// {@template analytics_provider}
/// Defines the supported analytics service providers.
///
/// This allows for dynamically switching between providers based on remote
/// configuration.
/// {@endtemplate}
@JsonEnum()
enum AnalyticsProvider {
  /// Firebase Analytics.
  @JsonValue('firebase')
  firebase,

  /// Mixpanel Analytics.
  @JsonValue('mixpanel')
  mixpanel,

  /// A demo provider that logs events to the console for development.
  @JsonValue('demo')
  demo,
}
