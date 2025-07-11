import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// {@template pagination_options}
/// Represents pagination parameters for a query.
/// {@endtemplate}
@immutable
class PaginationOptions extends Equatable {
  /// {@macro pagination_options}
  const PaginationOptions({this.cursor, this.limit});

  /// An opaque string used for pagination. This should be the `nextCursor`
  /// value from a previous `PaginatedResponse`.
  final String? cursor;

  /// The maximum number of items to return.
  final int? limit;

  @override
  List<Object?> get props => [cursor, limit];
}
