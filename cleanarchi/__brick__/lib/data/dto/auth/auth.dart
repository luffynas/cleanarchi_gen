import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  factory Auth({
    int? id,
    String? name,
    String? username,
    String? email,
    String? avatar,
    String? gender,
    String? hp,
    String? bio,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'set_username') int? setUsername,
    int? status,
    String? token,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
