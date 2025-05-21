import 'package:equatable/equatable.dart';
import 'package:ht_shared/ht_shared.dart' show AppConfig;
import 'package:ht_shared/src/models/models.dart' show AppConfig;
import 'package:ht_shared/src/models/remote-config/app_config.dart'
    show AppConfig;
import 'package:ht_shared/src/models/remote-config/remote_config.dart'
    show AppConfig;
import 'package:json_annotation/json_annotation.dart';

part 'ad_config.g.dart';

/// {@template ad_config}
/// Defines configuration settings related to ad injection and display,
/// tiered by user role.
///
/// This model is part of the overall [AppConfig] and is used to control
/// how ads are integrated into the application's feed or other content areas
/// based on the user's authentication status or subscription level.
/// {@endtemplate}
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdConfig extends Equatable {
  /// {@macro ad_config}
  const AdConfig({
    required this.guestAdFrequency,
    required this.guestAdPlacementInterval,
    required this.authenticatedAdFrequency,
    required this.authenticatedAdPlacementInterval,
    required this.premiumAdFrequency,
    required this.premiumAdPlacementInterval,
  });

  /// Factory method to create an [AdConfig] instance from a JSON map.
  factory AdConfig.fromJson(Map<String, dynamic> json) =>
      _$AdConfigFromJson(json);

  /// The frequency at which ads should appear for guest users
  /// (e.g., every N items).
  final int guestAdFrequency;

  /// The minimum number of non-ad items that must appear between ads
  /// for guest users.
  final int guestAdPlacementInterval;

  /// The frequency at which ads should appear for authenticated users.
  final int authenticatedAdFrequency;

  /// The minimum number of non-ad items that must appear between ads
  /// for authenticated users.
  final int authenticatedAdPlacementInterval;

  /// The frequency at which ads should appear for premium users.
  final int premiumAdFrequency;

  /// The minimum number of non-ad items that must appear between ads
  /// for premium users.
  final int premiumAdPlacementInterval;

  /// Converts this [AdConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$AdConfigToJson(this);

  @override
  List<Object> get props => [
        guestAdFrequency,
        guestAdPlacementInterval,
        authenticatedAdFrequency,
        authenticatedAdPlacementInterval,
        premiumAdFrequency,
        premiumAdPlacementInterval,
      ];
}
