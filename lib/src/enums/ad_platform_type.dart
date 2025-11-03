/// {@template ad_platform_type}
/// Defines the single ad platform to be used across the entire application.
/// {@endtemplate}
enum AdPlatformType {
  /// Google AdMob platform.
  admob,

  /// Represents a placeholder ad platform for demonstration purposes.
  ///
  /// When this type is selected, it indicates that ads should be handled
  /// by a demo-specific ad provider, which displays placeholder ads ,
  /// without initializing external ad SDKs. This is
  /// primarily used in the `demo` environment to avoid actual ad network
  /// calls and `MissingPluginException` on unsupported platforms (e.g., web).
  demo,
}
