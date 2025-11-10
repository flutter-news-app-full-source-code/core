import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/config/interest_limits.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'interest_config.g.dart';

/// {@template interest_config}
/// Defines the centralized configuration for the "Interests" feature.
///
/// This model allows for remotely enabling or disabling the entire feature
/// and provides granular, role-based limits for how users can create and
/// utilize interests.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InterestConfig extends Equatable {
  /// {@macro interest_config}
  const InterestConfig({required this.limits});

  /// Creates an [InterestConfig] from JSON data.
  factory InterestConfig.fromJson(Map<String, dynamic> json) =>
      _$InterestConfigFromJson(json);

  /// A map defining the specific limits for each user role.
  ///
  /// The key is the [AppUserRole], and the value contains the detailed limits
  /// for that role.
  final Map<AppUserRole, InterestLimits> limits;

  /// Converts this [InterestConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$InterestConfigToJson(this);

  @override
  List<Object> get props => [limits];

  /// Creates a copy of this [InterestConfig] but with the given fields
  /// replaced with the new values.
  InterestConfig copyWith({Map<AppUserRole, InterestLimits>? limits}) {
    return InterestConfig(limits: limits ?? this.limits);
  }
}
