import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template browser_choice_changed_payload}
/// Payload for the `browserChoiceChanged` analytics event.
/// {@endtemplate}
class BrowserChoiceChangedPayload extends AnalyticsEventPayload {
  /// {@macro browser_choice_changed_payload}
  const BrowserChoiceChangedPayload({required this.browserType});

  /// The user's chosen browser preference ('inApp' or 'external').
  final FeedItemClickBehavior browserType;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.browserType: browserType};
  }

  @override
  List<Object> get props => [browserType];
}
