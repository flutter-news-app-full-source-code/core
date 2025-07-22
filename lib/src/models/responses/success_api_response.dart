import 'package:core/src/models/responses/response_metadata.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'success_api_response.g.dart';

/// {@template success_api_response}
/// A generic wrapper for successful API responses.
///
/// Encapsulates the main data payload ([data]) and optional
/// metadata ([metadata]). This provides a consistent structure
/// across different API endpoints.
///
/// The type [T] represents the type of the main data payload, which could be:
/// - A single model object (e.g., `Headline`).
/// - A list of model objects (e.g., `List<Topic>`).
/// - A paginated response object (e.g., `PaginatedResponse<Source>`).
/// {@endtemplate}
@immutable
@JsonSerializable(
  genericArgumentFactories: true,
  explicitToJson: true,
  includeIfNull: true,
  checked: true,
)
class SuccessApiResponse<T> extends Equatable {
  /// {@macro success_api_response}
  const SuccessApiResponse({required this.data, required this.metadata});

  /// Factory method to create a [SuccessApiResponse] instance from a JSON map.
  ///
  /// Requires a `fromJsonT` function to deserialize the generic [data] field.
  factory SuccessApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$SuccessApiResponseFromJson(json, fromJsonT);

  /// The main data payload of the response.
  final T data;

  /// Optional metadata associated with the response.
  final ResponseMetadata metadata;

  /// Converts this [SuccessApiResponse] instance to a JSON map.
  ///
  /// Requires a `toJsonT` function to serialize the generic [data] field.
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$SuccessApiResponseToJson(this, toJsonT);

  @override
  List<Object?> get props => [data, metadata];

  /// Creates a copy of this [SuccessApiResponse] but with the given fields
  /// replaced with the new values.
  SuccessApiResponse<T> copyWith({T? data, ResponseMetadata? metadata}) {
    return SuccessApiResponse<T>(
      data: data ?? this.data,
      metadata: metadata ?? this.metadata,
    );
  }
}
