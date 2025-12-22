import 'package:core/core.dart' show SubscriptionConfig, ValueWrapper;
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
  }) : assert(
         !enabled ||
             ((appleProductId != null && appleProductId != '') ||
                 (googleProductId != null && googleProductId != '') ||
                 (stripePriceId != null && stripePriceId != '')),
         'An enabled plan must have at least one valid product ID.',
       );

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
    ValueWrapper<String?>? appleProductId,
    ValueWrapper<String?>? googleProductId,
    ValueWrapper<String?>? stripePriceId,
  }) {
    return PlanDetails(
      enabled: enabled ?? this.enabled,
      isRecommended: isRecommended ?? this.isRecommended,
      appleProductId: appleProductId != null
          ? appleProductId.value
          : this.appleProductId,
      googleProductId: googleProductId != null
          ? googleProductId.value
          : this.googleProductId,
      stripePriceId: stripePriceId != null
          ? stripePriceId.value
          : this.stripePriceId,
    );
  }
}
