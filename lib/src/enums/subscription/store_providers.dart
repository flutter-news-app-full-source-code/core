import 'package:json_annotation/json_annotation.dart';

/// Defines the payment provider.
///
/// This MUST remain distinct to handle provider-specific SDKs and backend
/// validation logic.
@JsonEnum()
enum StoreProviders {
  /// Apple App Store.
  apple,

  /// Google Play Store.
  google,
}
