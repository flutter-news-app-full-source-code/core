import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/config/config.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'one_signal_provider_config.g.dart';

/// {@template one_signal_provider_config}
/// A concrete implementation of [PushNotificationProviderConfig] for OneSignal.
///
/// This model holds the specific credentials required for the backend to
/// authenticate with the OneSignal REST API.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class OneSignalProviderConfig extends PushNotificationProviderConfig {
  /// {@macro one_signal_provider_config}
  const OneSignalProviderConfig({required this.appId, required this.restApiKey})
    : super(provider: PushNotificationProvider.oneSignal);

  /// Creates a [OneSignalProviderConfig] from JSON data.
  factory OneSignalProviderConfig.fromJson(Map<String, dynamic> json) =>
      _$OneSignalProviderConfigFromJson(json);

  /// The OneSignal App ID for your application.
  final String appId;

  /// The OneSignal REST API Key for server-side operations.
  final String restApiKey;

  @override
  Map<String, dynamic> toJson() => _$OneSignalProviderConfigToJson(this);

  @override
  List<Object> get props => [provider, appId, restApiKey];

  /// Creates a copy of this instance with the given fields replaced.
  OneSignalProviderConfig copyWith({String? appId, String? restApiKey}) {
    return OneSignalProviderConfig(
      appId: appId ?? this.appId,
      restApiKey: restApiKey ?? this.restApiKey,
    );
  }
}
