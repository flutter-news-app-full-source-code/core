// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthSuccessResponse _$AuthSuccessResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AuthSuccessResponse', json, ($checkedConvert) {
      final val = AuthSuccessResponse(
        user: $checkedConvert(
          'user',
          (v) => User.fromJson(v as Map<String, dynamic>),
        ),
        token: $checkedConvert('token', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$AuthSuccessResponseToJson(
  AuthSuccessResponse instance,
) => <String, dynamic>{'user': instance.user.toJson(), 'token': instance.token};
