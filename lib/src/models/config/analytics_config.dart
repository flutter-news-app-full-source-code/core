import 'package:core/src/enums/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'analytics_config.g.dart';

/// {@template analytics_config}
/// Defines the remote configuration for the analytics system.
///
/// This model allows administrators to remotely enable or disable analytics,
/// switch the active provider, and control event logging with fine-grained
/// rules like disabling specific events or setting sampling rates.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AnalyticsConfig extends Equatable {
  /// {@macro analytics_config}
  const AnalyticsConfig({
    required this.enabled,
    required this.activeProvider,
    this.disabledEvents = const {},
    this.eventSamplingRates = const {},
  });

  /// Creates an [AnalyticsConfig] from JSON data.
  factory AnalyticsConfig.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsConfigFromJson(json);

  /// A master switch to enable or disable the entire analytics system.
  final bool enabled;

  /// The primary analytics service provider to be used by the system.
  final AnalyticsProvider activeProvider;

  /// A set of specific events that should NOT be logged.
  ///
  /// This acts as a server-side kill switch for noisy or problematic events,
  /// without requiring an app update. If an event is absent from this set, it 
  /// is considered enabled by default.
  @JsonKey(
    defaultValue: {},
    fromJson: _disabledEventsFromJson,
    toJson: _disabledEventsToJson,
  )
  final Set<AnalyticsEvent> disabledEvents;

  /// A map defining the sampling rate (a value between 0.0 and 1.0) for
  /// specific high-frequency events.
  ///
  /// For example, `{ "contentViewed": 0.1 }` means only 10% of `contentViewed`
  /// events will be logged. If an event is not in this map, it is logged at
  /// a 1.0 rate (100%).
  @JsonKey(
    defaultValue: {},
    fromJson: _eventSamplingRatesFromJson,
    toJson: _eventSamplingRatesToJson,
  )
  final Map<AnalyticsEvent, double> eventSamplingRates;

  /// Converts this [AnalyticsConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$AnalyticsConfigToJson(this);

  @override
  List<Object> get props => [
    enabled,
    activeProvider,
    disabledEvents,
    eventSamplingRates,
  ];

  /// Creates a copy of this [AnalyticsConfig] but with the given fields
  /// replaced with the new values.
  AnalyticsConfig copyWith({
    bool? enabled,
    AnalyticsProvider? activeProvider,
    Set<AnalyticsEvent>? disabledEvents,
    Map<AnalyticsEvent, double>? eventSamplingRates,
  }) {
    return AnalyticsConfig(
      enabled: enabled ?? this.enabled,
      activeProvider: activeProvider ?? this.activeProvider,
      disabledEvents: disabledEvents ?? this.disabledEvents,
      eventSamplingRates: eventSamplingRates ?? this.eventSamplingRates,
    );
  }
}

Set<AnalyticsEvent> _disabledEventsFromJson(List<dynamic> json) {
  return json.map((e) => AnalyticsEvent.values.byName(e as String)).toSet();
}

List<String> _disabledEventsToJson(Set<AnalyticsEvent> events) {
  return events.map((e) => e.name).toList();
}

Map<AnalyticsEvent, double> _eventSamplingRatesFromJson(
  Map<String, dynamic> json,
) {
  return json.map(
    (key, value) =>
        MapEntry(AnalyticsEvent.values.byName(key), value as double),
  );
}

Map<String, dynamic> _eventSamplingRatesToJson(
  Map<AnalyticsEvent, double> rates,
) {
  return rates.map((key, value) => MapEntry(key.name, value));
}
