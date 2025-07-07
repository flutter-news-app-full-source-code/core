import 'package:json_annotation/json_annotation.dart';

/// {@template app_accent_theme}
/// Represents a selection of predefined accent color themes.
///
/// These themes typically define the primary accent color used for interactive
/// elements, highlights, and branding touches throughout the application.
/// The actual `ColorScheme` associated with each enum value would be defined
/// within the application's theme configuration.
/// {@endtemplate}

enum AppAccentTheme {
  /// The default blue accent theme.
  defaultBlue,

  /// A red accent theme, often suitable for news applications.
  newsRed,

  /// A neutral gray/graphite accent theme.
  graphiteGray,

  // Add other predefined accent themes here as needed.
}
