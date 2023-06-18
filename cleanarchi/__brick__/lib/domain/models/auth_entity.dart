import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart';

@freezed
class AuthEntity with _$AuthEntity {
  factory AuthEntity({String? token, String? refreshToken}) = _AuthEntity;

  factory AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthEntityFromJson(json);
}
