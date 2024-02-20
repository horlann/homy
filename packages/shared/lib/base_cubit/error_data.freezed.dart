// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorDialogAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() close,
    required TResult Function(VoidCallback callback) retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? close,
    TResult? Function(VoidCallback callback)? retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? close,
    TResult Function(VoidCallback callback)? retry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Close value) close,
    required TResult Function(_Retry value) retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Close value)? close,
    TResult? Function(_Retry value)? retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Close value)? close,
    TResult Function(_Retry value)? retry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDialogActionCopyWith<$Res> {
  factory $ErrorDialogActionCopyWith(
          ErrorDialogAction value, $Res Function(ErrorDialogAction) then) =
      _$ErrorDialogActionCopyWithImpl<$Res, ErrorDialogAction>;
}

/// @nodoc
class _$ErrorDialogActionCopyWithImpl<$Res, $Val extends ErrorDialogAction>
    implements $ErrorDialogActionCopyWith<$Res> {
  _$ErrorDialogActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CloseImplCopyWith<$Res> {
  factory _$$CloseImplCopyWith(
          _$CloseImpl value, $Res Function(_$CloseImpl) then) =
      __$$CloseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseImplCopyWithImpl<$Res>
    extends _$ErrorDialogActionCopyWithImpl<$Res, _$CloseImpl>
    implements _$$CloseImplCopyWith<$Res> {
  __$$CloseImplCopyWithImpl(
      _$CloseImpl _value, $Res Function(_$CloseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseImpl implements _Close {
  const _$CloseImpl();

  @override
  String toString() {
    return 'ErrorDialogAction.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() close,
    required TResult Function(VoidCallback callback) retry,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? close,
    TResult? Function(VoidCallback callback)? retry,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? close,
    TResult Function(VoidCallback callback)? retry,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Close value) close,
    required TResult Function(_Retry value) retry,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Close value)? close,
    TResult? Function(_Retry value)? retry,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Close value)? close,
    TResult Function(_Retry value)? retry,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _Close implements ErrorDialogAction {
  const factory _Close() = _$CloseImpl;
}

/// @nodoc
abstract class _$$RetryImplCopyWith<$Res> {
  factory _$$RetryImplCopyWith(
          _$RetryImpl value, $Res Function(_$RetryImpl) then) =
      __$$RetryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callback});
}

/// @nodoc
class __$$RetryImplCopyWithImpl<$Res>
    extends _$ErrorDialogActionCopyWithImpl<$Res, _$RetryImpl>
    implements _$$RetryImplCopyWith<$Res> {
  __$$RetryImplCopyWithImpl(
      _$RetryImpl _value, $Res Function(_$RetryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$RetryImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$RetryImpl implements _Retry {
  const _$RetryImpl({required this.callback});

  @override
  final VoidCallback callback;

  @override
  String toString() {
    return 'ErrorDialogAction.retry(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetryImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetryImplCopyWith<_$RetryImpl> get copyWith =>
      __$$RetryImplCopyWithImpl<_$RetryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() close,
    required TResult Function(VoidCallback callback) retry,
  }) {
    return retry(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? close,
    TResult? Function(VoidCallback callback)? retry,
  }) {
    return retry?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? close,
    TResult Function(VoidCallback callback)? retry,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Close value) close,
    required TResult Function(_Retry value) retry,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Close value)? close,
    TResult? Function(_Retry value)? retry,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Close value)? close,
    TResult Function(_Retry value)? retry,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class _Retry implements ErrorDialogAction {
  const factory _Retry({required final VoidCallback callback}) = _$RetryImpl;

  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$RetryImplCopyWith<_$RetryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
