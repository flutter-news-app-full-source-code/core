import 'package:core/src/enums/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'purchase_transaction.g.dart';

/// {@template purchase_transaction}
/// A data transfer object created by the client to request purchase validation.
///
/// This resource is sent to the backend after a successful native payment flow,
/// containing the necessary receipt data for server-side validation.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PurchaseTransaction extends Equatable {
  /// {@macro purchase_transaction}
  const PurchaseTransaction({
    required this.planId,
    required this.provider,
    required this.providerReceipt,
  });

  /// Creates a [PurchaseTransaction] from JSON data.
  factory PurchaseTransaction.fromJson(Map<String, dynamic> json) =>
      _$PurchaseTransactionFromJson(json);

  /// The internal ID of the `SubscriptionPlan` being purchased.
  final String planId;

  /// The store provider that processed the payment.
  final StoreProvider provider;

  /// The raw receipt data or token from the native payment provider
  /// (e.g., Apple App Store receipt, Google Play purchase token).
  final String providerReceipt;

  /// Converts this [PurchaseTransaction] instance to JSON data.
  Map<String, dynamic> toJson() => _$PurchaseTransactionToJson(this);

  @override
  List<Object> get props => [planId, provider, providerReceipt];

  /// Creates a copy of this [PurchaseTransaction] with updated values.
  PurchaseTransaction copyWith({
    String? planId,
    StoreProvider? provider,
    String? providerReceipt,
  }) {
    return PurchaseTransaction(
      planId: planId ?? this.planId,
      provider: provider ?? this.provider,
      providerReceipt: providerReceipt ?? this.providerReceipt,
    );
  }
}
