// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthEntity _$$_AuthEntityFromJson(Map<String, dynamic> json) =>
    _$_AuthEntity(
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$_AuthEntityToJson(_$_AuthEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
