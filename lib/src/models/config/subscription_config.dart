import 'package:core/src/enums/subscription_enums.dart';
import 'package:core/src/models/subscription/subscription_plan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'subscription_config.g.dart';

/// {@template subscription_config}
/// The root configuration object for all subscription-related features,
/// intended to be part of `RemoteConfig`.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class SubscriptionConfig extends Equatable {
  /// {@macro subscription_config}
  const SubscriptionConfig({
    required this.enabled,
    required this.enabledProviders,
    required this.plans,
  });

  /// Creates a [SubscriptionConfig] from JSON data.
  factory SubscriptionConfig.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionConfigFromJson(json);

  /// Master switch for the entire subscription system.
  final bool enabled;

  /// The "Provider Switch". This list dictates which payment SDKs the mobile
  /// client should initialize and use.
  final List<StoreProvider> enabledProviders;

  /// The list of available subscription plans (the product catalog).
  final List<SubscriptionPlan> plans;

  /// Converts this [SubscriptionConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$SubscriptionConfigToJson(this);

  @override
  List<Object?> get props => [enabled, enabledProviders, plans];

  /// Creates a copy of this [SubscriptionConfig] but with the given fields
  /// replaced with the new values.
  SubscriptionConfig copyWith({
    bool? enabled,
    List<StoreProvider>? enabledProviders,
    List<SubscriptionPlan>? plans,
  }) {
    return SubscriptionConfig(
      enabled: enabled ?? this.enabled,
      enabledProviders: enabledProviders ?? this.enabledProviders,
      plans: plans ?? this.plans,
    );
  }
}
