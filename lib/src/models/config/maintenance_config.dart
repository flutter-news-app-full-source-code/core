import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'maintenance_config.g.dart';

/// {@template maintenance_config}
/// Defines configuration settings related to application maintenance status.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class MaintenanceConfig extends Equatable {
  /// {@macro maintenance_config}
  const MaintenanceConfig({required this.isUnderMaintenance});

  /// Creates a [MaintenanceConfig] from JSON data.
  factory MaintenanceConfig.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceConfigFromJson(json);

  /// Indicates if the app is currently under maintenance.
  final bool isUnderMaintenance;

  /// Converts this [MaintenanceConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$MaintenanceConfigToJson(this);

  @override
  List<Object> get props => [isUnderMaintenance];
}
