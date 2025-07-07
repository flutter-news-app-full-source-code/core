import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'permission.g.dart';

/// {@template permission}
/// Defines the available permissions in the system.
///
/// Permissions follow the format `resource.action`.
/// {@endtemplate}

@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Permission extends Equatable {
  /// {@macro permission}
  const Permission({required this.name});

  /// Creates a Permission from JSON data.
  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);

  /// The name of the permission (e.g., 'headline.read').
  final String name;

  /// Converts this Permission instance to JSON data.
  Map<String, dynamic> toJson() => _$PermissionToJson(this);

  @override
  List<Object> get props => [name];

  @override
  String toString() => 'Permission(name: $name)';
}
