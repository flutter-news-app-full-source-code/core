import 'package:equatable/equatable.dart';

/// {@template analytics_event_payload}
/// An abstract base class for all analytics event payloads.
///
/// Concrete implementations of this class provide strongly-typed data containers
/// for specific analytics events, ensuring type safety and discoverability.
/// {@endtemplate}
abstract class AnalyticsEventPayload extends Equatable {
  /// {@macro analytics_event_payload}
  const AnalyticsEventPayload();

  /// Converts the payload object into a map of parameters suitable for an
  /// analytics provider.
  Map<String, dynamic> toMap();
}
