import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'general_app_config.g.dart';

/// {@template general_app_config}
/// Defines general application-level settings not covered by other configs.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class GeneralAppConfig extends Equatable {
  /// {@macro general_app_config}
  const GeneralAppConfig({
    required this.termsOfServiceUrl,
    required this.privacyPolicyUrl,
  });

  /// Creates a [GeneralAppConfig] from JSON data.
  factory GeneralAppConfig.fromJson(Map<String, dynamic> json) =>
      _$GeneralAppConfigFromJson(json);

  /// The URL for the application's Terms of Service page.
  final String termsOfServiceUrl;

  /// The URL for the application's Privacy Policy page.
  final String privacyPolicyUrl;

  /// Converts this [GeneralAppConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$GeneralAppConfigToJson(this);

  @override
  List<Object> get props => [termsOfServiceUrl, privacyPolicyUrl];

  /// Creates a copy of this [GeneralAppConfig] but with the given fields
  /// replaced with the new values.
  GeneralAppConfig copyWith({
    String? termsOfServiceUrl,
    String? privacyPolicyUrl,
  }) {
    return GeneralAppConfig(
      termsOfServiceUrl: termsOfServiceUrl ?? this.termsOfServiceUrl,
      privacyPolicyUrl: privacyPolicyUrl ?? this.privacyPolicyUrl,
    );
  }
}
