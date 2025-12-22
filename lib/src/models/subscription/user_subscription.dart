import 'package:core/src/enums/subscription/subscription.dart';
import 'package:core/src/utils/date_time_converter.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_subscription.g.dart';

/// {@template user_subscription}
/// The single source of truth for a user's subscription entitlement status.
///
/// This is a database entity managed by the backend, created and updated based
/// on validated purchase events from payment providers.
///
/// ### Architectural Design: Scope & Security
///
/// 1.  **No Billing Data (PCI Compliance):** This model intentionally excludes
///     sensitive billing details (credit cards, CVV). Payment processing is
///     strictly offloaded to native SDKs (Apple, Google, Stripe) to ensure
///     security and compliance. The app never touches raw payment data.
///
/// 2.  **External Management:** There are no "Edit Subscription" models because
///     management (upgrades, cancellations) is handled natively by the OS or
///     provider portals. This model serves as a **read-only reflection** of
///     the external state.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserSubscription extends Equatable {
  /// {@macro user_subscription}
  const UserSubscription({
    required this.id,
    required this.userId,
    required this.tier,
    required this.status,
    required this.provider,
    required this.validUntil,
    required this.willAutoRenew,
    required this.originalTransactionId,
  });

  /// Creates a [UserSubscription] from JSON data.
  factory UserSubscription.fromJson(Map<String, dynamic> json) =>
      _$UserSubscriptionFromJson(json);

  /// The unique identifier for this subscription record.
  final String id;

  /// The ID of the user this subscription belongs to.
  final String userId;

  /// The entitlement tier granted by this subscription (e.g., 'premium').
  final AccessTier tier;

  /// The current lifecycle status of the subscription (e.g., 'active').
  final SubscriptionStatus status;

  /// The payment provider through which this subscription was purchased.
  final StoreProvider provider;

  /// The date and time when the subscription access expires.
  @DateTimeConverter()
  final DateTime validUntil;

  /// A flag indicating if the subscription is set to auto-renew.
  final bool willAutoRenew;

  /// The original transaction ID from the payment provider.
  final String originalTransactionId;

  /// Converts this [UserSubscription] instance to JSON data.
  Map<String, dynamic> toJson() => _$UserSubscriptionToJson(this);

  @override
  List<Object> get props => [
    id,
    userId,
    tier,
    status,
    provider,
    validUntil,
    willAutoRenew,
    originalTransactionId,
  ];

  /// Creates a copy of this [UserSubscription] with updated values.
  UserSubscription copyWith({
    String? id,
    String? userId,
    AccessTier? tier,
    SubscriptionStatus? status,
    StoreProvider? provider,
    DateTime? validUntil,
    bool? willAutoRenew,
    String? originalTransactionId,
  }) {
    return UserSubscription(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      tier: tier ?? this.tier,
      status: status ?? this.status,
      provider: provider ?? this.provider,
      validUntil: validUntil ?? this.validUntil,
      willAutoRenew: willAutoRenew ?? this.willAutoRenew,
      originalTransactionId:
          originalTransactionId ?? this.originalTransactionId,
    );
  }
}
