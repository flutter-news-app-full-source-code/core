import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'engagement_content_config.g.dart';

/// {@template engagement_content_config}
/// Defines configuration settings related to the display frequency of
/// engagement content, tiered by user role.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class EngagementContentConfig extends Equatable {
  /// {@macro engagement_content_config}
  const EngagementContentConfig({
    required this.guestDaysBetweenEngagementContentShows,
    required this.standardUserDaysBetweenEngagementContentShows,
    required this.premiumUserDaysBetweenEngagementContentShows,
    required this.adminDaysBetweenEngagementContentShows,
  });

  /// Factory method to create an [EngagementContentConfig] instance from a
  /// JSON map.
  factory EngagementContentConfig.fromJson(Map<String, dynamic> json) =>
      _$EngagementContentConfigFromJson(json);

  /// Days between engagement content for guest users.
  final int guestDaysBetweenEngagementContentShows;

  /// Days between engagement content for standard users.
  final int standardUserDaysBetweenEngagementContentShows;

  /// Days between engagement content for premium users.
  final int premiumUserDaysBetweenEngagementContentShows;

  /// Days between engagement content for admin users.
  final int adminDaysBetweenEngagementContentShows;

  /// Converts this [EngagementContentConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$EngagementContentConfigToJson(this);

  /// Creates a copy of this [EngagementContentConfig] but with the given
  /// fields replaced with the new values.
  EngagementContentConfig copyWith({
    int? guestDaysBetweenEngagementContentShows,
    int? standardUserDaysBetweenEngagementContentShows,
    int? premiumUserDaysBetweenEngagementContentShows,
    int? adminDaysBetweenEngagementContentShows,
  }) {
    return EngagementContentConfig(
      guestDaysBetweenEngagementContentShows:
          guestDaysBetweenEngagementContentShows ??
              this.guestDaysBetweenEngagementContentShows,
      standardUserDaysBetweenEngagementContentShows:
          standardUserDaysBetweenEngagementContentShows ??
              this.standardUserDaysBetweenEngagementContentShows,
      premiumUserDaysBetweenEngagementContentShows:
          premiumUserDaysBetweenEngagementContentShows ??
              this.premiumUserDaysBetweenEngagementContentShows,
      adminDaysBetweenEngagementContentShows:
          adminDaysBetweenEngagementContentShows ??
              this.adminDaysBetweenEngagementContentShows,
    );
  }

  @override
  List<Object> get props => [
        guestDaysBetweenEngagementContentShows,
        standardUserDaysBetweenEngagementContentShows,
        premiumUserDaysBetweenEngagementContentShows,
        adminDaysBetweenEngagementContentShows,
      ];
}
