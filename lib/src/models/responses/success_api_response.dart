import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/responses/response_metadata.dart';

/// {@template success_api_response}
/// A generic wrapper for successful API responses.
///
/// Encapsulates the main data payload ([data]) and optional
/// metadata ([metadata]). This provides a consistent structure
/// across different API endpoints.
///
/// The type [T] represents the type of the main data payload, which could be:
/// - A single model object (e.g., `Headline`).
/// - A list of model objects (e.g., `List<Category>`).
/// - A paginated response object (e.g., `PaginatedResponse<Source>`).
/// {@endtemplate}
class SuccessApiResponse<T> extends Equatable {
  /// {@macro success_api_response}
  const SuccessApiResponse({required this.data, this.metadata});

  /// Factory method to create a [SuccessApiResponse] instance from a JSON map.
  ///
  /// Requires a `fromJsonT` function to deserialize the generic [data] field.
  factory SuccessApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return SuccessApiResponse(
      data: fromJsonT(json['data']),
      metadata: json['metadata'] == null
          ? null
          : ResponseMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );
  }

  /// The main data payload of the response.
  final T data;

  /// Optional metadata associated with the response.
  final ResponseMetadata? metadata;

  /// Converts this [SuccessApiResponse] instance to a JSON map.
  ///
  /// Requires a `toJsonT` function to serialize the generic [data] field.
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return <String, dynamic>{
      'data': toJsonT(data),
      'metadata': metadata?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

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
