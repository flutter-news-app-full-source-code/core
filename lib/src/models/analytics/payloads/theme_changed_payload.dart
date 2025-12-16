import 'package:core/src/enums/app_accent_theme.dart';
import 'package:core/src/enums/app_base_theme.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template theme_changed_payload}
/// Payload for the `themeChanged` analytics event.
/// {@endtemplate}
class ThemeChangedPayload extends AnalyticsEventPayload {
  /// {@macro theme_changed_payload}
  const ThemeChangedPayload({
    required this.baseTheme,
    required this.accentTheme,
  });

  /// The new base theme (e.g., 'light', 'dark').
  final AppBaseTheme baseTheme;

  /// The new accent theme (e.g., 'newsRed').
  final AppAccentTheme accentTheme;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.baseTheme: baseTheme.name,
      AnalyticsParameterKeys.accentTheme: accentTheme.name,
    };
  }

  @override
  List<Object> get props => [baseTheme, accentTheme];
}
