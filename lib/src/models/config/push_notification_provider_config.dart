import 'package:core/src/enums/push_notification_provider.dart';
import 'package:core/src/models/config/firebase_provider_config.dart';
import 'package:core/src/models/config/one_signal_provider_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

/// {@template push_notification_provider_config}
/// An abstract base class for push notification provider configurations.
///
/// This class uses a factory constructor to enable polymorphic deserialization,
/// allowing for different concrete configuration models (e.g.,
/// [FirebaseProviderConfig], [OneSignalProviderConfig]) based on a
/// `providerName` discriminator field in the JSON data.
/// {@endtemplate}
@JsonSerializable(createToJson: false, checked: true)
abstract class PushNotificationProviderConfig extends Equatable {
  /// {@macro push_notification_provider_config}
  const PushNotificationProviderConfig({required this.providerName});

  /// Creates a [PushNotificationProviderConfig] instance from a JSON map.
  ///
  /// This factory uses the `providerName` field in the JSON map to dispatch
  /// to the correct concrete `fromJson` constructor.
  ///
  /// Throws [FormatException] if the `providerName` field is missing or unknown.
  factory PushNotificationProviderConfig.fromJson(Map<String, dynamic> json) {
    final providerName = $enumDecodeNullable(
      PushNotificationProvider.values,
      json['providerName'],
    );

    if (providerName == null) {
      throw const FormatException(
        'Missing or unknown "providerName" in PushNotificationProviderConfig JSON.',
      );
    }

    switch (providerName) {
      case PushNotificationProvider.firebase:
        return FirebaseProviderConfig.fromJson(json);
      case PushNotificationProvider.oneSignal:
        return OneSignalProviderConfig.fromJson(json);
    }
  }

  /// The name of the provider, used as a discriminator for deserialization.
  @JsonKey(includeToJson: true)
  final PushNotificationProvider providerName;

  /// Converts this instance to JSON data.
  ///
  /// Concrete implementations are responsible for providing the full JSON
  /// representation, including the `providerName` field.
  Map<String, dynamic> toJson();

  @override
  List<Object> get props => [providerName];
}
