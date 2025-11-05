import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/config/config.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'firebase_provider_config.g.dart';

/// {@template firebase_provider_config}
/// A concrete implementation of [PushNotificationProviderConfig] for Firebase.
///
/// This model holds the specific credentials required for the backend to
/// authenticate with Firebase Cloud Messaging (FCM) using a service account.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FirebaseProviderConfig extends PushNotificationProviderConfig {
  /// {@macro firebase_provider_config}
  const FirebaseProviderConfig({
    required this.projectId,
    required this.clientEmail,
    required this.privateKey,
  }) : super(provider: PushNotificationProvider.firebase);

  /// Creates a [FirebaseProviderConfig] from JSON data.
  factory FirebaseProviderConfig.fromJson(Map<String, dynamic> json) =>
      _$FirebaseProviderConfigFromJson(json);

  /// The project ID from the Firebase service account credentials.
  final String projectId;

  /// The client email from the Firebase service account credentials.
  final String clientEmail;

  /// The private key from the Firebase service account credentials.
  final String privateKey;

  @override
  Map<String, dynamic> toJson() => _$FirebaseProviderConfigToJson(this);

  @override
  List<Object> get props => [provider, projectId, clientEmail, privateKey];

  /// Creates a copy of this instance with the given fields replaced.
  FirebaseProviderConfig copyWith({
    String? projectId,
    String? clientEmail,
    String? privateKey,
  }) {
    return FirebaseProviderConfig(
      projectId: projectId ?? this.projectId,
      clientEmail: clientEmail ?? this.clientEmail,
      privateKey: privateKey ?? this.privateKey,
    );
  }
}
