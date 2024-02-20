// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appbar_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppbarTitle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget widget) customWidget,
    required TResult Function(String text, Key? key) defaultText,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget widget)? customWidget,
    TResult? Function(String text, Key? key)? defaultText,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget widget)? customWidget,
    TResult Function(String text, Key? key)? defaultText,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomWidget value) customWidget,
    required TResult Function(_DefaultText value) defaultText,
    required TResult Function(_None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomWidget value)? customWidget,
    TResult? Function(_DefaultText value)? defaultText,
    TResult? Function(_None value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomWidget value)? customWidget,
    TResult Function(_DefaultText value)? defaultText,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarTitleCopyWith<$Res> {
  factory $AppbarTitleCopyWith(
          AppbarTitle value, $Res Function(AppbarTitle) then) =
      _$AppbarTitleCopyWithImpl<$Res, AppbarTitle>;
}

/// @nodoc
class _$AppbarTitleCopyWithImpl<$Res, $Val extends AppbarTitle>
    implements $AppbarTitleCopyWith<$Res> {
  _$AppbarTitleCopyWithImpl(this._value, this._then);

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
    extends _$AppbarTitleCopyWithImpl<$Res, _$CustomWidgetImpl>
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
    return 'AppbarTitle.customWidget(widget: $widget)';
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
    required TResult Function(String text, Key? key) defaultText,
    required TResult Function() none,
  }) {
    return customWidget(widget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget widget)? customWidget,
    TResult? Function(String text, Key? key)? defaultText,
    TResult? Function()? none,
  }) {
    return customWidget?.call(widget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget widget)? customWidget,
    TResult Function(String text, Key? key)? defaultText,
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
    required TResult Function(_DefaultText value) defaultText,
    required TResult Function(_None value) none,
  }) {
    return customWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomWidget value)? customWidget,
    TResult? Function(_DefaultText value)? defaultText,
    TResult? Function(_None value)? none,
  }) {
    return customWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomWidget value)? customWidget,
    TResult Function(_DefaultText value)? defaultText,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (customWidget != null) {
      return customWidget(this);
    }
    return orElse();
  }
}

abstract class _CustomWidget implements AppbarTitle {
  const factory _CustomWidget(final Widget widget) = _$CustomWidgetImpl;

  Widget get widget;
  @JsonKey(ignore: true)
  _$$CustomWidgetImplCopyWith<_$CustomWidgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultTextImplCopyWith<$Res> {
  factory _$$DefaultTextImplCopyWith(
          _$DefaultTextImpl value, $Res Function(_$DefaultTextImpl) then) =
      __$$DefaultTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, Key? key});
}

/// @nodoc
class __$$DefaultTextImplCopyWithImpl<$Res>
    extends _$AppbarTitleCopyWithImpl<$Res, _$DefaultTextImpl>
    implements _$$DefaultTextImplCopyWith<$Res> {
  __$$DefaultTextImplCopyWithImpl(
      _$DefaultTextImpl _value, $Res Function(_$DefaultTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? key = freezed,
  }) {
    return _then(_$DefaultTextImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc

class _$DefaultTextImpl implements _DefaultText {
  const _$DefaultTextImpl(this.text, {this.key});

  @override
  final String text;
  @override
  final Key? key;

  @override
  String toString() {
    return 'AppbarTitle.defaultText(text: $text, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultTextImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultTextImplCopyWith<_$DefaultTextImpl> get copyWith =>
      __$$DefaultTextImplCopyWithImpl<_$DefaultTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget widget) customWidget,
    required TResult Function(String text, Key? key) defaultText,
    required TResult Function() none,
  }) {
    return defaultText(text, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget widget)? customWidget,
    TResult? Function(String text, Key? key)? defaultText,
    TResult? Function()? none,
  }) {
    return defaultText?.call(text, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget widget)? customWidget,
    TResult Function(String text, Key? key)? defaultText,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (defaultText != null) {
      return defaultText(text, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomWidget value) customWidget,
    required TResult Function(_DefaultText value) defaultText,
    required TResult Function(_None value) none,
  }) {
    return defaultText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomWidget value)? customWidget,
    TResult? Function(_DefaultText value)? defaultText,
    TResult? Function(_None value)? none,
  }) {
    return defaultText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomWidget value)? customWidget,
    TResult Function(_DefaultText value)? defaultText,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (defaultText != null) {
      return defaultText(this);
    }
    return orElse();
  }
}

abstract class _DefaultText implements AppbarTitle {
  const factory _DefaultText(final String text, {final Key? key}) =
      _$DefaultTextImpl;

  String get text;
  Key? get key;
  @JsonKey(ignore: true)
  _$$DefaultTextImplCopyWith<_$DefaultTextImpl> get copyWith =>
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
    extends _$AppbarTitleCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements _None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'AppbarTitle.none()';
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
    required TResult Function(String text, Key? key) defaultText,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget widget)? customWidget,
    TResult? Function(String text, Key? key)? defaultText,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget widget)? customWidget,
    TResult Function(String text, Key? key)? defaultText,
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
    required TResult Function(_DefaultText value) defaultText,
    required TResult Function(_None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomWidget value)? customWidget,
    TResult? Function(_DefaultText value)? defaultText,
    TResult? Function(_None value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomWidget value)? customWidget,
    TResult Function(_DefaultText value)? defaultText,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements AppbarTitle {
  const factory _None() = _$NoneImpl;
}
