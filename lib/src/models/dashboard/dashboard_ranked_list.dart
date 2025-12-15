import 'package:core/src/models/dashboard/ranked_list_item.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'dashboard_ranked_list.g.dart';

/// {@template dashboard_ranked_list}
/// A model for storing a pre-aggregated ranked list for the dashboard.
///
/// This model holds a list of [RankedListItem] objects and is identified by a
/// unique ID, allowing it to be stored and fetched from the database.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class DashboardRankedList extends Equatable {
  /// {@macro dashboard_ranked_list}
  const DashboardRankedList({required this.id, required this.items});

  /// Creates a [DashboardRankedList] from JSON data.
  factory DashboardRankedList.fromJson(Map<String, dynamic> json) =>
      _$DashboardRankedListFromJson(json);

  /// A unique identifier for the ranked list
  /// (e.g., 'content_management_top_headlines_weekly').
  final String id;

  /// A list of ranked items.
  final List<RankedListItem> items;

  /// Converts this [DashboardRankedList] instance to JSON data.
  Map<String, dynamic> toJson() => _$DashboardRankedListToJson(this);

  @override
  List<Object> get props => [id, items];
}
