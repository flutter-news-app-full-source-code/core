import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'paginated_reponse.g.dart';

/// {@template paginated_response}
/// A generic class to represent a paginated response.
///
/// Contains a list of items of type [T], a cursor for the next page,
/// and a boolean indicating if there are more items.
/// {@endtemplate}
@immutable
@JsonSerializable(
  genericArgumentFactories: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class PaginatedResponse<T> extends Equatable {
  /// {@macro paginated_response}
  const PaginatedResponse({
    required this.items,
    required this.cursor,
    required this.hasMore,
  });

  /// Factory method to create a [PaginatedResponse] instance from a JSON map.
  ///
  /// The `fromJsonT` parameter is a function that converts the JSON
  /// representation of an item of type [T] to an instance of [T].
  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResponseFromJson(json, fromJsonT);

  /// The list of items of type [T] in the current page.
  @JsonKey(name: 'items')
  final List<T> items;

  /// A cursor string that points to the next page of results.
  ///
  /// This should be used as input to fetch the subsequent page.
  /// If null, indicates that there are no more pages.
  final String? cursor;

  /// A boolean value indicating whether there are more items available
  /// after the current page.
  final bool hasMore;

  /// Converts this [PaginatedResponse] instance to a JSON map.
  ///
  /// The `toJsonT` parameter is a function that converts an instance of [T]
  /// to its JSON representation.
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$PaginatedResponseToJson(this, toJsonT);

  @override
  List<Object?> get props => [items, cursor, hasMore];

  /// Creates a copy of this [PaginatedResponse] with the given fields
  /// replaced with the new values.
  PaginatedResponse<T> copyWith({
    List<T>? items,
    String? cursor,
    bool? hasMore,
  }) {
    return PaginatedResponse<T>(
      items: items ?? this.items,
      cursor: cursor ?? this.cursor,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}
