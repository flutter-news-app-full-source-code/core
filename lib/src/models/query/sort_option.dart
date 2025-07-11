import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/enums/sort_order.dart';
import 'package:meta/meta.dart';

/// {@template sort_option}
/// Represents a single sorting criterion for a query, consisting of a field
/// name and a sort order.
/// {@endtemplate}
@immutable
class SortOption extends Equatable {
  /// {@macro sort_option}
  const SortOption(this.field, [this.order = SortOrder.asc]);

  /// The field to sort by.
  final String field;

  /// The order to sort in.
  final SortOrder order;

  @override
  List<Object> get props => [field, order];
}
