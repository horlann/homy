// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appbar_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppbarActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget widget) customWidget,
    required TResult Function(
            String path, VoidCallback callback, Key? key, int? rotation)
        actionSvgPicture,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget widget)? customWidget,
    TResult? Function(
            String path, VoidCallback callback, Key? key, int? rotation)?
        actionSvgPicture,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget widget)? customWidget,
    TResult Function(
            String path, VoidCallback callback, Key? key, int? rotation)?
        actionSvgPicture,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomWidget value) customWidget,
    required TResult Function(_ActionSvgPicture value) actionSvgPicture,
    required TResult Function(_None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomWidget value)? customWidget,
    TResult? Function(_ActionSvgPicture value)? actionSvgPicture,
    TResult? Function(_None value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomWidget value)? customWidget,
    TResult Function(_ActionSvgPicture value)? actionSvgPicture,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarActionsCopyWith<$Res> {
  factory $AppbarActionsCopyWith(
          AppbarActions value, $Res Function(AppbarActions) then) =
      _$AppbarActionsCopyWithImpl<$Res, AppbarActions>;
}

/// @nodoc
class _$AppbarActionsCopyWithImpl<$Res, $Val extends AppbarActions>
    implements $AppbarActionsCopyWith<$Res> {
  _$AppbarActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CustomWidgetImplCopyWith<$Res> {
  factory _$$CustomWidgetImplCopyWith(
          _$CustomWidgetImpl value, $Res Function(_$CustomWidgetImpl) then) =
      __$$CustomWidgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget widget});
}

/// @nodoc
class __$$CustomWidgetImplCopyWithImpl<$Res>
    extends _$AppbarActionsCopyWithImpl<$Res, _$CustomWidgetImpl>
    implements _$$CustomWidgetImplCopyWith<$Res> {
  __$$CustomWidgetImplCopyWithImpl(
      _$CustomWidgetImpl _value, $Res Function(_$CustomWidgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widget = null,
  }) {
    return _then(_$CustomWidgetImpl(
      null == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$CustomWidgetImpl implements _CustomWidget {
  const _$CustomWidgetImpl(this.widget);

  @override
  final Widget widget;

  @override
  String toString() {
    return 'AppbarActions.customWidget(widget: $widget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomWidgetImpl &&
            (identical(other.widget, widget) || other.widget == widget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomWidgetImplCopyWith<_$CustomWidgetImpl> get copyWith =>
      __$$CustomWidgetImplCopyWithImpl<_$CustomWidgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget widget) customWidget,
    required TResult Function(
            String path, VoidCallback callback, Key? key, int? rotation)
        actionSvgPicture,
    required TResult Function() none,
  }) {
    return customWidget(widget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget widget)? customWidget,
    TResult? Function(
            String path, VoidCallback callback, Key? key, int? rotation)?
        actionSvgPicture,
    TResult? Function()? none,
  }) {
    return customWidget?.call(widget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget widget)? customWidget,
    TResult Function(
            String path, VoidCallback callback, Key? key, int? rotation)?
        actionSvgPicture,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (customWidget != null) {
      return customWidget(widget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomWidget value) customWidget,
    required TResult Function(_ActionSvgPicture value) actionSvgPicture,
    required TResult Function(_None value) none,
  }) {
    return customWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomWidget value)? customWidget,
    TResult? Function(_ActionSvgPicture value)? actionSvgPicture,
    TResult? Function(_None value)? none,
  }) {
    return customWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomWidget value)? customWidget,
    TResult Function(_ActionSvgPicture value)? actionSvgPicture,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (customWidget != null) {
      return customWidget(this);
    }
    return orElse();
  }
}

abstract class _CustomWidget implements AppbarActions {
  const factory _CustomWidget(final Widget widget) = _$CustomWidgetImpl;

  Widget get widget;
  @JsonKey(ignore: true)
  _$$CustomWidgetImplCopyWith<_$CustomWidgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionSvgPictureImplCopyWith<$Res> {
  factory _$$ActionSvgPictureImplCopyWith(_$ActionSvgPictureImpl value,
          $Res Function(_$ActionSvgPictureImpl) then) =
      __$$ActionSvgPictureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path, VoidCallback callback, Key? key, int? rotation});
}

/// @nodoc
class __$$ActionSvgPictureImplCopyWithImpl<$Res>
    extends _$AppbarActionsCopyWithImpl<$Res, _$ActionSvgPictureImpl>
    implements _$$ActionSvgPictureImplCopyWith<$Res> {
  __$$ActionSvgPictureImplCopyWithImpl(_$ActionSvgPictureImpl _value,
      $Res Function(_$ActionSvgPictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? callback = null,
    Object? key = freezed,
    Object? rotation = freezed,
  }) {
    return _then(_$ActionSvgPictureImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
      rotation: freezed == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ActionSvgPictureImpl implements _ActionSvgPicture {
  const _$ActionSvgPictureImpl(this.path, this.callback,
      {this.key, this.rotation});

  @override
  final String path;
  @override
  final VoidCallback callback;
  @override
  final Key? key;
  @override
  final int? rotation;

  @override
  String toString() {
    return 'AppbarActions.actionSvgPicture(path: $path, callback: $callback, key: $key, rotation: $rotation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionSvgPictureImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.callback, callback) ||
                other.callback == callback) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.rotation, rotation) ||
                other.rotation == rotation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, callback, key, rotation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionSvgPictureImplCopyWith<_$ActionSvgPictureImpl> get copyWith =>
      __$$ActionSvgPictureImplCopyWithImpl<_$ActionSvgPictureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget widget) customWidget,
    required TResult Function(
            String path, VoidCallback callback, Key? key, int? rotation)
        actionSvgPicture,
    required TResult Function() none,
  }) {
    return actionSvgPicture(path, callback, key, rotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget widget)? customWidget,
    TResult? Function(
            String path, VoidCallback callback, Key? key, int? rotation)?
        actionSvgPicture,
    TResult? Function()? none,
  }) {
    return actionSvgPicture?.call(path, callback, key, rotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget widget)? customWidget,
    TResult Function(
            String path, VoidCallback callback, Key? key, int? rotation)?
        actionSvgPicture,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (actionSvgPicture != null) {
      return actionSvgPicture(path, callback, key, rotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomWidget value) customWidget,
    required TResult Function(_ActionSvgPicture value) actionSvgPicture,
    required TResult Function(_None value) none,
  }) {
    return actionSvgPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomWidget value)? customWidget,
    TResult? Function(_ActionSvgPicture value)? actionSvgPicture,
    TResult? Function(_None value)? none,
  }) {
    return actionSvgPicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomWidget value)? customWidget,
    TResult Function(_ActionSvgPicture value)? actionSvgPicture,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (actionSvgPicture != null) {
      return actionSvgPicture(this);
    }
    return orElse();
  }
}

abstract class _ActionSvgPicture implements AppbarActions {
  const factory _ActionSvgPicture(
      final String path, final VoidCallback callback,
      {final Key? key, final int? rotation}) = _$ActionSvgPictureImpl;

  String get path;
  VoidCallback get callback;
  Key? get key;
  int? get rotation;
  @JsonKey(ignore: true)
  _$$ActionSvgPictureImplCopyWith<_$ActionSvgPictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$AppbarActionsCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements _None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'AppbarActions.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget widget) customWidget,
    required TResult Function(
            String path, VoidCallback callback, Key? key, int? rotation)
        actionSvgPicture,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget widget)? customWidget,
    TResult? Function(
            String path, VoidCallback callback, Key? key, int? rotation)?
        actionSvgPicture,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget widget)? customWidget,
    TResult Function(
            String path, VoidCallback callback, Key? key, int? rotation)?
        actionSvgPicture,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomWidget value) customWidget,
    required TResult Function(_ActionSvgPicture value) actionSvgPicture,
    required TResult Function(_None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomWidget value)? customWidget,
    TResult? Function(_ActionSvgPicture value)? actionSvgPicture,
    TResult? Function(_None value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomWidget value)? customWidget,
    TResult Function(_ActionSvgPicture value)? actionSvgPicture,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements AppbarActions {
  const factory _None() = _$NoneImpl;
}
