import 'package:core/src/models/config/firebase_provider_config.dart';
import 'package:core/src/models/config/one_signal_provider_config.dart';
import 'package:equatable/equatable.dart';

/// {@template push_notification_provider_config}
/// An abstract base class for push notification provider configurations.
///
/// This class uses a factory constructor to enable polymorphic deserialization,
/// allowing for different concrete configuration models (e.g.,
/// [FirebaseProviderConfig], [OneSignalProviderConfig]) based on a
/// `providerName` discriminator field in the JSON data.
/// {@endtemplate}
abstract class PushNotificationProviderConfig extends Equatable {
  /// {@macro push_notification_provider_config}
  const PushNotificationProviderConfig({required this.provider});

  /// Factory method to create a [PushNotificationProviderConfig] instance from a JSON map.
  ///
  /// This factory uses the `provider` field in the JSON map to dispatch to the
  /// correct concrete `fromJson` constructor.
  ///
  /// Throws [FormatException] if the `provider` field is missing or unknown.
  factory PushNotificationProviderConfig.fromJson(Map<String, dynamic> json) {
    final provider = json['provider'] as String?;
    if (provider == null) {
      throw const FormatException('Missing "provider" field in FeedItem JSON.');
    }

    switch (provider) {
      case 'firebase':
        return FirebaseProviderConfig.fromJson(json);
      case 'oneSignal':
        return OneSignalProviderConfig.fromJson(json);
      default:
        throw FormatException('Unknown push notification provider: $provider');
    }
  }

  /// Static method to serialize a [PushNotificationProviderConfig] instance
  /// to a JSON map.
  ///
  /// This method acts as a dispatcher, using the `provider` field of the
  /// provided [providerConfig] to delegate to the correct concrete `toJson`
  /// instance method.
  ///
  /// Throws [FormatException] if the `provider` field is missing or unknown.
  static Map<String, dynamic> toJson(
    PushNotificationProviderConfig providerConfig,
  ) {
    switch (providerConfig.provider) {
      case 'firebase':
        final provider = providerConfig as FirebaseProviderConfig;
        return provider.toJson();
      case 'oneSignal':
        final provider = providerConfig as OneSignalProviderConfig;
        return provider.toJson();
      default:
        throw FormatException(
          'Unknown PushNotificationProviderConfig type: ${providerConfig.provider}',
        );
    }
  }

  /// The name of the provider, used as a discriminator for deserialization.
  final String provider;

  @override
  List<Object> get props => [provider];
}
