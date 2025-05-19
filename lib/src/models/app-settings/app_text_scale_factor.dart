/// {@template app_text_scale_factor}
/// Represents user-selectable text size preferences, often mapped to
/// system text scale factors for accessibility.
///
/// This allows users to increase or decrease the overall size of text
/// throughout the application for better readability.
/// {@endtemplate}
enum AppTextScaleFactor {
  /// Smaller text size.
  small,

  /// Default/medium text size.
  medium,

  /// Larger text size.
  large,

  /// Extra large text size.
  extraLarge,
}
