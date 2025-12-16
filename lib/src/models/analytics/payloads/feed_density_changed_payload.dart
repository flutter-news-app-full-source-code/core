import 'package:core/src/enums/feed_item_density.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template feed_density_changed_payload}
/// Payload for the `feedDensityChanged` analytics event.
/// {@endtemplate}
class FeedDensityChangedPayload extends AnalyticsEventPayload {
  /// {@macro feed_density_changed_payload}
  const FeedDensityChangedPayload({required this.density});

  /// The new feed density setting.
  final FeedItemDensity density;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.density: density.name};
  }

  @override
  List<Object> get props => [density];
}
