import 'package:core/src/enums/app_user_role.dart';
import 'package:core/src/models/config/remote_config.dart';
import 'package:core/src/models/config/saved_filter_limits.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_preference_config.g.dart';

/// {@template user_preference_config}
/// Defines configuration for all user preferences, including role-based
/// limits for followed items, saved headlines, and saved filters.
///
/// This model is part of the overall [RemoteConfig]. It uses a map-based
/// structure where the key is the [AppUserRole] and the value is the specific
/// limit for that role, ensuring a scalable and maintainable configuration.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserPreferenceConfig extends Equatable {
  /// {@macro user_preference_config}
  const UserPreferenceConfig({
    required this.followedItemsLimit,
    required this.savedHeadlinesLimit,
    required this.savedHeadlineFiltersLimit,
    required this.savedSourceFiltersLimit,
  });

  /// Factory method to create a [UserPreferenceConfig] instance from a JSON map.
  factory UserPreferenceConfig.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceConfigFromJson(json);

  /// Role-based limits for the number of followed items (topics, sources,
  /// countries). The limit applies to each category individually.
  final Map<AppUserRole, int> followedItemsLimit;

  /// Role-based limits for the number of saved headlines.
  final Map<AppUserRole, int> savedHeadlinesLimit;

  /// Role-based limits for saved headline filters, using the
  /// [SavedFilterLimits] model to define total, pinned, and notification
  /// subscription counts. This map defines the limits per user role.
  final Map<AppUserRole, SavedFilterLimits> savedHeadlineFiltersLimit;

  /// Role-based limits for saved source filters, using the
  /// [SavedFilterLimits] model to define total and pinned counts. This map
  /// defines the limits per user role.
  final Map<AppUserRole, SavedFilterLimits> savedSourceFiltersLimit;

  /// Converts this [UserPreferenceConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$UserPreferenceConfigToJson(this);

  /// Creates a copy of this [UserPreferenceConfig] but with the given fields
  /// replaced with the new values.
  UserPreferenceConfig copyWith({
    Map<AppUserRole, int>? followedItemsLimit,
    Map<AppUserRole, int>? savedHeadlinesLimit,
    Map<AppUserRole, SavedFilterLimits>? savedHeadlineFiltersLimit,
    Map<AppUserRole, SavedFilterLimits>? savedSourceFiltersLimit,
  }) {
    return UserPreferenceConfig(
      followedItemsLimit: followedItemsLimit ?? this.followedItemsLimit,
      savedHeadlinesLimit: savedHeadlinesLimit ?? this.savedHeadlinesLimit,
      savedHeadlineFiltersLimit:
          savedHeadlineFiltersLimit ?? this.savedHeadlineFiltersLimit,
      savedSourceFiltersLimit:
          savedSourceFiltersLimit ?? this.savedSourceFiltersLimit,
    );
  }

  @override
  List<Object> get props => [
    followedItemsLimit,
    savedHeadlinesLimit,
    savedHeadlineFiltersLimit,
    savedSourceFiltersLimit,
  ];

  @override
  bool get stringify => true;
}
