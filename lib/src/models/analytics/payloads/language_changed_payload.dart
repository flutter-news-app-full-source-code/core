import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template language_changed_payload}
/// Payload for the `languageChanged` analytics event.
/// {@endtemplate}
class LanguageChangedPayload extends AnalyticsEventPayload {
  /// {@macro language_changed_payload}
  const LanguageChangedPayload({required this.languageCode});

  /// The new language code (e.g., 'en', 'ar').
  final String languageCode;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.languageCode: languageCode};
  }

  @override
  List<Object> get props => [languageCode];
}
