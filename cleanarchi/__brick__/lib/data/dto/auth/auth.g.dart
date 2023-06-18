// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$$_AuthFromJson(Map<String, dynamic> json) => _$_Auth(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      gender: json['gender'] as String?,
      hp: json['hp'] as String?,
      bio: json['bio'] as String?,
      birthDate: json['birth_date'] as String?,
      setUsername: json['set_username'] as int?,
      status: json['status'] as int?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'avatar': instance.avatar,
      'gender': instance.gender,
      'hp': instance.hp,
      'bio': instance.bio,
      'birth_date': instance.birthDate,
      'set_username': instance.setUsername,
      'status': instance.status,
      'token': instance.token,
    };
