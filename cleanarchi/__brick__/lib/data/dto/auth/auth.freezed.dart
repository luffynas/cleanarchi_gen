// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return _Auth.fromJson(json);
}

/// @nodoc
mixin _$Auth {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get hp => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'set_username')
  int? get setUsername => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res, Auth>;
  @useResult
  $Res call(
      {int? id,
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
      String? token});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res, $Val extends Auth>
    implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? gender = freezed,
    Object? hp = freezed,
    Object? bio = freezed,
    Object? birthDate = freezed,
    Object? setUsername = freezed,
    Object? status = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      hp: freezed == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      setUsername: freezed == setUsername
          ? _value.setUsername
          : setUsername // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$$_AuthCopyWith(_$_Auth value, $Res Function(_$_Auth) then) =
      __$$_AuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      String? token});
}

/// @nodoc
class __$$_AuthCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res, _$_Auth>
    implements _$$_AuthCopyWith<$Res> {
  __$$_AuthCopyWithImpl(_$_Auth _value, $Res Function(_$_Auth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? gender = freezed,
    Object? hp = freezed,
    Object? bio = freezed,
    Object? birthDate = freezed,
    Object? setUsername = freezed,
    Object? status = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_Auth(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      hp: freezed == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      setUsername: freezed == setUsername
          ? _value.setUsername
          : setUsername // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Auth implements _Auth {
  _$_Auth(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.avatar,
      this.gender,
      this.hp,
      this.bio,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'set_username') this.setUsername,
      this.status,
      this.token});

  factory _$_Auth.fromJson(Map<String, dynamic> json) => _$$_AuthFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? avatar;
  @override
  final String? gender;
  @override
  final String? hp;
  @override
  final String? bio;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  @JsonKey(name: 'set_username')
  final int? setUsername;
  @override
  final int? status;
  @override
  final String? token;

  @override
  String toString() {
    return 'Auth(id: $id, name: $name, username: $username, email: $email, avatar: $avatar, gender: $gender, hp: $hp, bio: $bio, birthDate: $birthDate, setUsername: $setUsername, status: $status, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Auth &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.hp, hp) || other.hp == hp) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.setUsername, setUsername) ||
                other.setUsername == setUsername) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, email,
      avatar, gender, hp, bio, birthDate, setUsername, status, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthCopyWith<_$_Auth> get copyWith =>
      __$$_AuthCopyWithImpl<_$_Auth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthToJson(
      this,
    );
  }
}

abstract class _Auth implements Auth {
  factory _Auth(
      {final int? id,
      final String? name,
      final String? username,
      final String? email,
      final String? avatar,
      final String? gender,
      final String? hp,
      final String? bio,
      @JsonKey(name: 'birth_date') final String? birthDate,
      @JsonKey(name: 'set_username') final int? setUsername,
      final int? status,
      final String? token}) = _$_Auth;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$_Auth.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get avatar;
  @override
  String? get gender;
  @override
  String? get hp;
  @override
  String? get bio;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  @JsonKey(name: 'set_username')
  int? get setUsername;
  @override
  int? get status;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthCopyWith<_$_Auth> get copyWith => throw _privateConstructorUsedError;
}
