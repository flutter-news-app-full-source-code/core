import 'package:core/src/enums/limited_action.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// Defines the UI element or event that initiated the account linking flow.
enum AccountLinkTrigger {
  /// The user tapped on the feed decorator prompting them to link their account.
  feedDecorator,

  /// The user tapped the 'Link Account' CTA from a limit-exceeded bottom sheet.
  limitBottomSheet,

  /// The user initiated the flow manually from their account/profile page.
  accountPage,
}

/// {@template account_linked_payload}
/// Payload for the `accountLinked` analytics event.
///
/// This payload provides context on what triggered the user to link their
/// anonymous account to a permanent one.
/// {@endtemplate}
class AccountLinkedPayload extends AnalyticsEventPayload {
  /// {@macro account_linked_payload}
  const AccountLinkedPayload({required this.trigger, this.limitType});

  /// The UI element or event that initiated the account linking flow.
  final AccountLinkTrigger trigger;

  /// If the trigger was a limit being exceeded, this specifies which limit.
  /// (e.g., 'savedHeadlines').
  final LimitedAction? limitType;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.trigger: trigger.name,
      if (limitType != null) AnalyticsParameterKeys.limitType: limitType!.name,
    };
  }

  @override
  List<Object?> get props => [trigger, limitType];
}
