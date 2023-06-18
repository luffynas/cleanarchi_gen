// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthEntity _$AuthEntityFromJson(Map<String, dynamic> json) {
  return _AuthEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthEntity {
  String? get token => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEntityCopyWith<AuthEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEntityCopyWith<$Res> {
  factory $AuthEntityCopyWith(
          AuthEntity value, $Res Function(AuthEntity) then) =
      _$AuthEntityCopyWithImpl<$Res, AuthEntity>;
  @useResult
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class _$AuthEntityCopyWithImpl<$Res, $Val extends AuthEntity>
    implements $AuthEntityCopyWith<$Res> {
  _$AuthEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthEntityCopyWith<$Res>
    implements $AuthEntityCopyWith<$Res> {
  factory _$$_AuthEntityCopyWith(
          _$_AuthEntity value, $Res Function(_$_AuthEntity) then) =
      __$$_AuthEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class __$$_AuthEntityCopyWithImpl<$Res>
    extends _$AuthEntityCopyWithImpl<$Res, _$_AuthEntity>
    implements _$$_AuthEntityCopyWith<$Res> {
  __$$_AuthEntityCopyWithImpl(
      _$_AuthEntity _value, $Res Function(_$_AuthEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$_AuthEntity(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthEntity implements _AuthEntity {
  _$_AuthEntity({this.token, this.refreshToken});

  factory _$_AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuthEntityFromJson(json);

  @override
  final String? token;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'AuthEntity(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEntity &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEntityCopyWith<_$_AuthEntity> get copyWith =>
      __$$_AuthEntityCopyWithImpl<_$_AuthEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthEntityToJson(
      this,
    );
  }
}

abstract class _AuthEntity implements AuthEntity {
  factory _AuthEntity({final String? token, final String? refreshToken}) =
      _$_AuthEntity;

  factory _AuthEntity.fromJson(Map<String, dynamic> json) =
      _$_AuthEntity.fromJson;

  @override
  String? get token;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthEntityCopyWith<_$_AuthEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
