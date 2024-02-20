// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteNotificationAction {
  AppStateType get type => throw _privateConstructorUsedError;
  dynamic Function(String) get callbackForeground =>
      throw _privateConstructorUsedError;
  dynamic Function(String) get callbackBackground =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteNotificationActionCopyWith<RemoteNotificationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteNotificationActionCopyWith<$Res> {
  factory $RemoteNotificationActionCopyWith(RemoteNotificationAction value,
          $Res Function(RemoteNotificationAction) then) =
      _$RemoteNotificationActionCopyWithImpl<$Res, RemoteNotificationAction>;
  @useResult
  $Res call(
      {AppStateType type,
      dynamic Function(String) callbackForeground,
      dynamic Function(String) callbackBackground});
}

/// @nodoc
class _$RemoteNotificationActionCopyWithImpl<$Res,
        $Val extends RemoteNotificationAction>
    implements $RemoteNotificationActionCopyWith<$Res> {
  _$RemoteNotificationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? callbackForeground = null,
    Object? callbackBackground = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AppStateType,
      callbackForeground: null == callbackForeground
          ? _value.callbackForeground
          : callbackForeground // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      callbackBackground: null == callbackBackground
          ? _value.callbackBackground
          : callbackBackground // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteNotificationActionBackgroundImplCopyWith<$Res>
    implements $RemoteNotificationActionCopyWith<$Res> {
  factory _$$RemoteNotificationActionBackgroundImplCopyWith(
          _$RemoteNotificationActionBackgroundImpl value,
          $Res Function(_$RemoteNotificationActionBackgroundImpl) then) =
      __$$RemoteNotificationActionBackgroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppStateType type,
      dynamic Function(String) callbackForeground,
      dynamic Function(String) callbackBackground});
}

/// @nodoc
class __$$RemoteNotificationActionBackgroundImplCopyWithImpl<$Res>
    extends _$RemoteNotificationActionCopyWithImpl<$Res,
        _$RemoteNotificationActionBackgroundImpl>
    implements _$$RemoteNotificationActionBackgroundImplCopyWith<$Res> {
  __$$RemoteNotificationActionBackgroundImplCopyWithImpl(
      _$RemoteNotificationActionBackgroundImpl _value,
      $Res Function(_$RemoteNotificationActionBackgroundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? callbackForeground = null,
    Object? callbackBackground = null,
  }) {
    return _then(_$RemoteNotificationActionBackgroundImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AppStateType,
      callbackForeground: null == callbackForeground
          ? _value.callbackForeground
          : callbackForeground // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      callbackBackground: null == callbackBackground
          ? _value.callbackBackground
          : callbackBackground // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ));
  }
}

/// @nodoc

class _$RemoteNotificationActionBackgroundImpl
    implements _RemoteNotificationActionBackground {
  const _$RemoteNotificationActionBackgroundImpl(
      {required this.type,
      required this.callbackForeground,
      required this.callbackBackground});

  @override
  final AppStateType type;
  @override
  final dynamic Function(String) callbackForeground;
  @override
  final dynamic Function(String) callbackBackground;

  @override
  String toString() {
    return 'RemoteNotificationAction(type: $type, callbackForeground: $callbackForeground, callbackBackground: $callbackBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteNotificationActionBackgroundImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.callbackForeground, callbackForeground) ||
                other.callbackForeground == callbackForeground) &&
            (identical(other.callbackBackground, callbackBackground) ||
                other.callbackBackground == callbackBackground));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, callbackForeground, callbackBackground);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteNotificationActionBackgroundImplCopyWith<
          _$RemoteNotificationActionBackgroundImpl>
      get copyWith => __$$RemoteNotificationActionBackgroundImplCopyWithImpl<
          _$RemoteNotificationActionBackgroundImpl>(this, _$identity);
}

abstract class _RemoteNotificationActionBackground
    implements RemoteNotificationAction {
  const factory _RemoteNotificationActionBackground(
          {required final AppStateType type,
          required final dynamic Function(String) callbackForeground,
          required final dynamic Function(String) callbackBackground}) =
      _$RemoteNotificationActionBackgroundImpl;

  @override
  AppStateType get type;
  @override
  dynamic Function(String) get callbackForeground;
  @override
  dynamic Function(String) get callbackBackground;
  @override
  @JsonKey(ignore: true)
  _$$RemoteNotificationActionBackgroundImplCopyWith<
          _$RemoteNotificationActionBackgroundImpl>
      get copyWith => throw _privateConstructorUsedError;
}
