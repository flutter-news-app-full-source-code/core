import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template search_performed_payload}
/// Payload for the `searchPerformed` analytics event.
/// {@endtemplate}
class SearchPerformedPayload extends AnalyticsEventPayload {
  /// {@macro search_performed_payload}
  const SearchPerformedPayload({
    required this.query,
    required this.resultCount,
  });

  /// The search query entered by the user.
  final String query;

  /// The number of results returned for the search.
  final int resultCount;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.searchQuery: query,
      AnalyticsParameterKeys.searchResultCount: resultCount,
    };
  }

  @override
  List<Object> get props => [query, resultCount];
}
