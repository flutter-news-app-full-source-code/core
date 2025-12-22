import 'package:core/src/enums/subscription/subscription_interval.dart';
import 'package:core/src/enums/subscription/subscription_tier.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'subscription_plan.g.dart';

/// {@template subscription_plan}
/// A data-only model representing a single product in the subscription catalog.
///
/// This object is part of the `SubscriptionConfig` and maps an internal plan
/// structure to the various provider-specific product IDs.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class SubscriptionPlan extends Equatable {
  /// {@macro subscription_plan}
  const SubscriptionPlan({
    required this.id,
    required this.tier,
    required this.interval,
    required this.isRecommended,
    this.appleProductId,
    this.googleProductId,
    this.stripePriceId,
  });

  /// Creates a [SubscriptionPlan] from JSON data.
  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);

  /// Your internal unique identifier (e.g., 'premium_monthly').
  final String id;

  /// The entitlement tier this plan grants (e.g., 'premium').
  final SubscriptionTier tier;

  /// The billing interval for this plan (e.g., 'month', 'year').
  final SubscriptionInterval interval;

  /// A data flag for the UI to hint that this plan is the "most popular".
  /// The UI can use this to apply a special border or badge.
  final bool isRecommended;

  /// The Product ID from Apple App Store Connect (for native IAP).
  final String? appleProductId;

  /// The Product ID from Google Play Console (for native IAP).
  final String? googleProductId;

  /// The Price ID from your Stripe dashboard (for native Stripe SDK).
  final String? stripePriceId;

  /// Converts this [SubscriptionPlan] instance to JSON data.
  Map<String, dynamic> toJson() => _$SubscriptionPlanToJson(this);

  @override
  List<Object?> get props => [
    id,
    tier,
    interval,
    isRecommended,
    appleProductId,
    googleProductId,
    stripePriceId,
  ];

  /// Creates a copy of this [SubscriptionPlan] but with the given fields
  /// replaced with the new values.
  SubscriptionPlan copyWith({
    String? id,
    SubscriptionTier? tier,
    SubscriptionInterval? interval,
    bool? isRecommended,
    String? appleProductId,
    String? googleProductId,
    String? stripePriceId,
  }) {
    return SubscriptionPlan(
      id: id ?? this.id,
      tier: tier ?? this.tier,
      interval: interval ?? this.interval,
      isRecommended: isRecommended ?? this.isRecommended,
      appleProductId: appleProductId ?? this.appleProductId,
      googleProductId: googleProductId ?? this.googleProductId,
      stripePriceId: stripePriceId ?? this.stripePriceId,
    );
  }
}
