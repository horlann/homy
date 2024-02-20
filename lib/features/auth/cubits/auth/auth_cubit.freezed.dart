// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User auth, UserEntity? courier) auth,
    required TResult Function() loading,
    required TResult Function() nonAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User auth, UserEntity? courier)? auth,
    TResult? Function()? loading,
    TResult? Function()? nonAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User auth, UserEntity? courier)? auth,
    TResult Function()? loading,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NonAuth value) nonAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NonAuth value)? nonAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Loading value)? loading,
    TResult Function(_NonAuth value)? nonAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User auth, UserEntity? courier) auth,
    required TResult Function() loading,
    required TResult Function() nonAuth,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User auth, UserEntity? courier)? auth,
    TResult? Function()? loading,
    TResult? Function()? nonAuth,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User auth, UserEntity? courier)? auth,
    TResult Function()? loading,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NonAuth value) nonAuth,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NonAuth value)? nonAuth,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Loading value)? loading,
    TResult Function(_NonAuth value)? nonAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthImplCopyWith<$Res> {
  factory _$$AuthImplCopyWith(
          _$AuthImpl value, $Res Function(_$AuthImpl) then) =
      __$$AuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User auth, UserEntity? courier});
}

/// @nodoc
class __$$AuthImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthImpl>
    implements _$$AuthImplCopyWith<$Res> {
  __$$AuthImplCopyWithImpl(_$AuthImpl _value, $Res Function(_$AuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? courier = freezed,
  }) {
    return _then(_$AuthImpl(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as User,
      courier: freezed == courier
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$AuthImpl implements _Auth {
  const _$AuthImpl({required this.auth, this.courier});

  @override
  final User auth;
  @override
  final UserEntity? courier;

  @override
  String toString() {
    return 'AuthState.auth(auth: $auth, courier: $courier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthImpl &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.courier, courier) || other.courier == courier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, courier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      __$$AuthImplCopyWithImpl<_$AuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User auth, UserEntity? courier) auth,
    required TResult Function() loading,
    required TResult Function() nonAuth,
  }) {
    return auth(this.auth, courier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User auth, UserEntity? courier)? auth,
    TResult? Function()? loading,
    TResult? Function()? nonAuth,
  }) {
    return auth?.call(this.auth, courier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User auth, UserEntity? courier)? auth,
    TResult Function()? loading,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this.auth, courier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NonAuth value) nonAuth,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NonAuth value)? nonAuth,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Loading value)? loading,
    TResult Function(_NonAuth value)? nonAuth,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth implements AuthState {
  const factory _Auth({required final User auth, final UserEntity? courier}) =
      _$AuthImpl;

  User get auth;
  UserEntity? get courier;
  @JsonKey(ignore: true)
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User auth, UserEntity? courier) auth,
    required TResult Function() loading,
    required TResult Function() nonAuth,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User auth, UserEntity? courier)? auth,
    TResult? Function()? loading,
    TResult? Function()? nonAuth,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User auth, UserEntity? courier)? auth,
    TResult Function()? loading,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NonAuth value) nonAuth,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NonAuth value)? nonAuth,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Loading value)? loading,
    TResult Function(_NonAuth value)? nonAuth,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NonAuthImplCopyWith<$Res> {
  factory _$$NonAuthImplCopyWith(
          _$NonAuthImpl value, $Res Function(_$NonAuthImpl) then) =
      __$$NonAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NonAuthImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NonAuthImpl>
    implements _$$NonAuthImplCopyWith<$Res> {
  __$$NonAuthImplCopyWithImpl(
      _$NonAuthImpl _value, $Res Function(_$NonAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NonAuthImpl implements _NonAuth {
  const _$NonAuthImpl();

  @override
  String toString() {
    return 'AuthState.nonAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NonAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User auth, UserEntity? courier) auth,
    required TResult Function() loading,
    required TResult Function() nonAuth,
  }) {
    return nonAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User auth, UserEntity? courier)? auth,
    TResult? Function()? loading,
    TResult? Function()? nonAuth,
  }) {
    return nonAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User auth, UserEntity? courier)? auth,
    TResult Function()? loading,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (nonAuth != null) {
      return nonAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NonAuth value) nonAuth,
  }) {
    return nonAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NonAuth value)? nonAuth,
  }) {
    return nonAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Loading value)? loading,
    TResult Function(_NonAuth value)? nonAuth,
    required TResult orElse(),
  }) {
    if (nonAuth != null) {
      return nonAuth(this);
    }
    return orElse();
  }
}

abstract class _NonAuth implements AuthState {
  const factory _NonAuth() = _$NonAuthImpl;
}
