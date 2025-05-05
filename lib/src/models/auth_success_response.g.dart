// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthSuccessResponse _$AuthSuccessResponseFromJson(Map<String, dynamic> json) =>
    AuthSuccessResponse(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$AuthSuccessResponseToJson(
  AuthSuccessResponse instance,
) => <String, dynamic>{'user': instance.user.toJson(), 'token': instance.token};
