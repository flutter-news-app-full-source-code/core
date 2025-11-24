import 'package:json_annotation/json_annotation.dart';

/// {@template headline_click_behavior}
/// Defines how a headline's external URL should be opened.
/// {@endtemplate}
@JsonEnum()
enum HeadlineClickBehavior {
  /// Adhere to the behavior defined by the admin in the remote config.
  @JsonValue('default')
  defaultBehavior,

  /// Open the URL in a browser within the app.
  @JsonValue('inAppBrowser')
  inAppBrowser,

  /// Open the URL in the device's default system browser.
  @JsonValue('systemBrowser')
  systemBrowser,
}
