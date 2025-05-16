import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

/// {@template role}
/// Defines the available user roles in the system.
/// {@endtemplate}
@JsonSerializable()
class Role extends Equatable {
  /// {@macro role}
  const Role({required this.name});

  /// Creates a Role from JSON data.
  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  /// The name of the role (e.g., 'admin', 'standard_user').
  final String name;

  /// Converts this Role instance to JSON data.
  Map<String, dynamic> toJson() => _$RoleToJson(this);

  @override
  List<Object> get props => [name];

  @override
  String toString() => 'Role(name: $name)';
}
