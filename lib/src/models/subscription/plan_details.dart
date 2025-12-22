import 'package:core/core.dart' show SubscriptionConfig;
import 'package:core/src/models/config/config.dart' show SubscriptionConfig;
import 'package:core/src/models/config/subscription_config.dart' show SubscriptionConfig;
import 'package:core/src/models/models.dart' show SubscriptionConfig;
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'plan_details.g.dart';

/// {@template plan_details}
/// A data model holding the configuration for a specific subscription plan
/// (e.g., monthly or annual).
///
/// This is a sub-model of [SubscriptionConfig] and is not intended to be used
/// as a standalone entity.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PlanDetails extends Equatable {
  /// {@macro plan_details}
  const PlanDetails({
    required this.enabled,
    required this.isRecommended,
    this.appleProductId,
    this.googleProductId,
    this.stripePriceId,
  });

  /// Creates a [PlanDetails] from JSON data.
  factory PlanDetails.fromJson(Map<String, dynamic> json) =>
      _$PlanDetailsFromJson(json);

  /// A switch to enable or disable offering this specific plan to users.
  final bool enabled;

  /// A flag for the UI to hint that this plan is the "best value" or
  /// "most popular".
  final bool isRecommended;

  /// The Product ID from Apple App Store Connect.
  final String? appleProductId;

  /// The Product ID from Google Play Console.
  final String? googleProductId;

  /// The Price ID from your Stripe dashboard.
  final String? stripePriceId;

  /// Converts this [PlanDetails] instance to JSON data.
  Map<String, dynamic> toJson() => _$PlanDetailsToJson(this);

  @override
  List<Object?> get props => [
        enabled,
        isRecommended,
        appleProductId,
        googleProductId,
        stripePriceId,
      ];

  /// Creates a copy of this [PlanDetails] with updated values.
  PlanDetails copyWith({
    bool? enabled,
    bool? isRecommended,
    String? appleProductId,
    String? googleProductId,
    String? stripePriceId,
  }) {
    return PlanDetails(
      enabled: enabled ?? this.enabled,
      isRecommended: isRecommended ?? this.isRecommended,
      appleProductId: appleProductId ?? this.appleProductId,
      googleProductId: googleProductId ?? this.googleProductId,
      stripePriceId: stripePriceId ?? this.stripePriceId,
    );
  }
}