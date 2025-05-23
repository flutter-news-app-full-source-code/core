import 'package:equatable/equatable.dart';
import 'package:ht_shared/ht_shared.dart'; // For User model
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_success_response.g.dart';

/// {@template auth_success_response}
/// Represents the successful result of an authentication operation,
/// typically containing the authenticated user details and an access token.
///
/// This model serves as the data payload (`T`) within a
/// `SuccessApiResponse<AuthSuccessResponse>` for authentication endpoints
/// like anonymous sign-in or code verification.
/// {@endtemplate}

@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class AuthSuccessResponse extends Equatable {
  /// {@macro auth_success_response}
  const AuthSuccessResponse({required this.user, required this.token});

  /// Factory constructor for creating a new AuthSuccessResponse instance
  /// from a map.
  /// Pass the map to the generated `_$AuthSuccessResponseFromJson()` constructor.
  factory AuthSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthSuccessResponseFromJson(json);

  /// The authenticated user object resulting from the operation.
  final User user;

  /// The authentication token (e.g., JWT) issued upon successful authentication.
  /// The client application is responsible for storing this token securely
  /// and providing it for subsequent authenticated requests.
  final String token;

  /// Converts this AuthSuccessResponse instance into a map.
  /// Pass the instance to the generated `_$AuthSuccessResponseToJson()` function.
  Map<String, dynamic> toJson() => _$AuthSuccessResponseToJson(this);

  /// Creates a copy of this AuthSuccessResponse but with the given fields
  /// replaced with the new values.
  AuthSuccessResponse copyWith({User? user, String? token}) {
    return AuthSuccessResponse(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  @override
  List<Object> get props => [user, token];
}
