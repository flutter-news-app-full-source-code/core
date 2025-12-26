import 'package:core/src/models/subscription/plan_details.dart';
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
    required this.monthlyPlan,
    required this.annualPlan,
  });

  /// Creates a [SubscriptionConfig] from JSON data.
  factory SubscriptionConfig.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionConfigFromJson(json);

  /// Master switch for the entire subscription system.
  final bool enabled;

  /// Configuration details for the monthly subscription plan.
  final PlanDetails monthlyPlan;

  /// Configuration details for the annual subscription plan.
  final PlanDetails annualPlan;

  /// Converts this [SubscriptionConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$SubscriptionConfigToJson(this);

  @override
  List<Object?> get props => [enabled, monthlyPlan, annualPlan];

  /// Creates a copy of this [SubscriptionConfig] but with the given fields
  /// replaced with the new values.
  SubscriptionConfig copyWith({
    bool? enabled,
    PlanDetails? monthlyPlan,
    PlanDetails? annualPlan,
  }) {
    return SubscriptionConfig(
      enabled: enabled ?? this.enabled,
      monthlyPlan: monthlyPlan ?? this.monthlyPlan,
      annualPlan: annualPlan ?? this.annualPlan,
    );
  }
}
