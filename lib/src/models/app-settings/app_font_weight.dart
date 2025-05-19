/// {@template app_font_weight}
/// Represents user-selectable font weight preferences.
///
/// This allows users to choose the thickness of text characters, which can
/// affect readability and visual style. These typically map to standard
/// `FontWeight` values (e.g., `FontWeight.w300`, `FontWeight.w400`,
/// `FontWeight.w700`).
/// {@endtemplate}
enum AppFontWeight {
  /// Light font weight (e.g., maps to `FontWeight.w300`).
  light,

  /// Regular font weight (e.g., maps to `FontWeight.w400`).
  regular,

  /// Bold font weight (e.g., maps to `FontWeight.w700`).
  bold,
}
