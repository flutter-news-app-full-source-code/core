import 'package:json_annotation/json_annotation.dart';

/// Defines the payment provider.
///
/// This MUST remain distinct to handle provider-specific SDKs and backend
/// validation logic.
@JsonEnum()
enum StoreProvider {
  /// Apple App Store.
  apple,

  /// Google Play Store.
  google,

  /// Stripe for direct payments.
  stripe,
}
