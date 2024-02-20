// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'button_leading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ButtonLeading {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IconData iconData, Color? color) icon,
    required TResult Function(SvgPicture image, Color? color) svgImage,
    required TResult Function(Image image) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, Color? color)? icon,
    TResult? Function(SvgPicture image, Color? color)? svgImage,
    TResult? Function(Image image)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, Color? color)? icon,
    TResult Function(SvgPicture image, Color? color)? svgImage,
    TResult Function(Image image)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonLeadingIcon value) icon,
    required TResult Function(_ButtonLeadingSvgImage value) svgImage,
    required TResult Function(_ButtonLeadingImage value) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonLeadingIcon value)? icon,
    TResult? Function(_ButtonLeadingSvgImage value)? svgImage,
    TResult? Function(_ButtonLeadingImage value)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonLeadingIcon value)? icon,
    TResult Function(_ButtonLeadingSvgImage value)? svgImage,
    TResult Function(_ButtonLeadingImage value)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonLeadingCopyWith<$Res> {
  factory $ButtonLeadingCopyWith(
          ButtonLeading value, $Res Function(ButtonLeading) then) =
      _$ButtonLeadingCopyWithImpl<$Res, ButtonLeading>;
}

/// @nodoc
class _$ButtonLeadingCopyWithImpl<$Res, $Val extends ButtonLeading>
    implements $ButtonLeadingCopyWith<$Res> {
  _$ButtonLeadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ButtonLeadingIconImplCopyWith<$Res> {
  factory _$$ButtonLeadingIconImplCopyWith(_$ButtonLeadingIconImpl value,
          $Res Function(_$ButtonLeadingIconImpl) then) =
      __$$ButtonLeadingIconImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IconData iconData, Color? color});
}

/// @nodoc
class __$$ButtonLeadingIconImplCopyWithImpl<$Res>
    extends _$ButtonLeadingCopyWithImpl<$Res, _$ButtonLeadingIconImpl>
    implements _$$ButtonLeadingIconImplCopyWith<$Res> {
  __$$ButtonLeadingIconImplCopyWithImpl(_$ButtonLeadingIconImpl _value,
      $Res Function(_$ButtonLeadingIconImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? color = freezed,
  }) {
    return _then(_$ButtonLeadingIconImpl(
      null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$ButtonLeadingIconImpl implements _ButtonLeadingIcon {
  const _$ButtonLeadingIconImpl(this.iconData, {this.color});

  @override
  final IconData iconData;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ButtonLeading.icon(iconData: $iconData, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonLeadingIconImpl &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonLeadingIconImplCopyWith<_$ButtonLeadingIconImpl> get copyWith =>
      __$$ButtonLeadingIconImplCopyWithImpl<_$ButtonLeadingIconImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IconData iconData, Color? color) icon,
    required TResult Function(SvgPicture image, Color? color) svgImage,
    required TResult Function(Image image) image,
  }) {
    return icon(iconData, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, Color? color)? icon,
    TResult? Function(SvgPicture image, Color? color)? svgImage,
    TResult? Function(Image image)? image,
  }) {
    return icon?.call(iconData, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, Color? color)? icon,
    TResult Function(SvgPicture image, Color? color)? svgImage,
    TResult Function(Image image)? image,
    required TResult orElse(),
  }) {
    if (icon != null) {
      return icon(iconData, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonLeadingIcon value) icon,
    required TResult Function(_ButtonLeadingSvgImage value) svgImage,
    required TResult Function(_ButtonLeadingImage value) image,
  }) {
    return icon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonLeadingIcon value)? icon,
    TResult? Function(_ButtonLeadingSvgImage value)? svgImage,
    TResult? Function(_ButtonLeadingImage value)? image,
  }) {
    return icon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonLeadingIcon value)? icon,
    TResult Function(_ButtonLeadingSvgImage value)? svgImage,
    TResult Function(_ButtonLeadingImage value)? image,
    required TResult orElse(),
  }) {
    if (icon != null) {
      return icon(this);
    }
    return orElse();
  }
}

abstract class _ButtonLeadingIcon implements ButtonLeading {
  const factory _ButtonLeadingIcon(final IconData iconData,
      {final Color? color}) = _$ButtonLeadingIconImpl;

  IconData get iconData;
  Color? get color;
  @JsonKey(ignore: true)
  _$$ButtonLeadingIconImplCopyWith<_$ButtonLeadingIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonLeadingSvgImageImplCopyWith<$Res> {
  factory _$$ButtonLeadingSvgImageImplCopyWith(
          _$ButtonLeadingSvgImageImpl value,
          $Res Function(_$ButtonLeadingSvgImageImpl) then) =
      __$$ButtonLeadingSvgImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SvgPicture image, Color? color});
}

/// @nodoc
class __$$ButtonLeadingSvgImageImplCopyWithImpl<$Res>
    extends _$ButtonLeadingCopyWithImpl<$Res, _$ButtonLeadingSvgImageImpl>
    implements _$$ButtonLeadingSvgImageImplCopyWith<$Res> {
  __$$ButtonLeadingSvgImageImplCopyWithImpl(_$ButtonLeadingSvgImageImpl _value,
      $Res Function(_$ButtonLeadingSvgImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? color = freezed,
  }) {
    return _then(_$ButtonLeadingSvgImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SvgPicture,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$ButtonLeadingSvgImageImpl implements _ButtonLeadingSvgImage {
  const _$ButtonLeadingSvgImageImpl(this.image, {this.color});

  @override
  final SvgPicture image;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ButtonLeading.svgImage(image: $image, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonLeadingSvgImageImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonLeadingSvgImageImplCopyWith<_$ButtonLeadingSvgImageImpl>
      get copyWith => __$$ButtonLeadingSvgImageImplCopyWithImpl<
          _$ButtonLeadingSvgImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IconData iconData, Color? color) icon,
    required TResult Function(SvgPicture image, Color? color) svgImage,
    required TResult Function(Image image) image,
  }) {
    return svgImage(this.image, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, Color? color)? icon,
    TResult? Function(SvgPicture image, Color? color)? svgImage,
    TResult? Function(Image image)? image,
  }) {
    return svgImage?.call(this.image, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, Color? color)? icon,
    TResult Function(SvgPicture image, Color? color)? svgImage,
    TResult Function(Image image)? image,
    required TResult orElse(),
  }) {
    if (svgImage != null) {
      return svgImage(this.image, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonLeadingIcon value) icon,
    required TResult Function(_ButtonLeadingSvgImage value) svgImage,
    required TResult Function(_ButtonLeadingImage value) image,
  }) {
    return svgImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonLeadingIcon value)? icon,
    TResult? Function(_ButtonLeadingSvgImage value)? svgImage,
    TResult? Function(_ButtonLeadingImage value)? image,
  }) {
    return svgImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonLeadingIcon value)? icon,
    TResult Function(_ButtonLeadingSvgImage value)? svgImage,
    TResult Function(_ButtonLeadingImage value)? image,
    required TResult orElse(),
  }) {
    if (svgImage != null) {
      return svgImage(this);
    }
    return orElse();
  }
}

abstract class _ButtonLeadingSvgImage implements ButtonLeading {
  const factory _ButtonLeadingSvgImage(final SvgPicture image,
      {final Color? color}) = _$ButtonLeadingSvgImageImpl;

  SvgPicture get image;
  Color? get color;
  @JsonKey(ignore: true)
  _$$ButtonLeadingSvgImageImplCopyWith<_$ButtonLeadingSvgImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonLeadingImageImplCopyWith<$Res> {
  factory _$$ButtonLeadingImageImplCopyWith(_$ButtonLeadingImageImpl value,
          $Res Function(_$ButtonLeadingImageImpl) then) =
      __$$ButtonLeadingImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Image image});
}

/// @nodoc
class __$$ButtonLeadingImageImplCopyWithImpl<$Res>
    extends _$ButtonLeadingCopyWithImpl<$Res, _$ButtonLeadingImageImpl>
    implements _$$ButtonLeadingImageImplCopyWith<$Res> {
  __$$ButtonLeadingImageImplCopyWithImpl(_$ButtonLeadingImageImpl _value,
      $Res Function(_$ButtonLeadingImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ButtonLeadingImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc

class _$ButtonLeadingImageImpl implements _ButtonLeadingImage {
  const _$ButtonLeadingImageImpl(this.image);

  @override
  final Image image;

  @override
  String toString() {
    return 'ButtonLeading.image(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonLeadingImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonLeadingImageImplCopyWith<_$ButtonLeadingImageImpl> get copyWith =>
      __$$ButtonLeadingImageImplCopyWithImpl<_$ButtonLeadingImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IconData iconData, Color? color) icon,
    required TResult Function(SvgPicture image, Color? color) svgImage,
    required TResult Function(Image image) image,
  }) {
    return image(this.image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, Color? color)? icon,
    TResult? Function(SvgPicture image, Color? color)? svgImage,
    TResult? Function(Image image)? image,
  }) {
    return image?.call(this.image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, Color? color)? icon,
    TResult Function(SvgPicture image, Color? color)? svgImage,
    TResult Function(Image image)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this.image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonLeadingIcon value) icon,
    required TResult Function(_ButtonLeadingSvgImage value) svgImage,
    required TResult Function(_ButtonLeadingImage value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonLeadingIcon value)? icon,
    TResult? Function(_ButtonLeadingSvgImage value)? svgImage,
    TResult? Function(_ButtonLeadingImage value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonLeadingIcon value)? icon,
    TResult Function(_ButtonLeadingSvgImage value)? svgImage,
    TResult Function(_ButtonLeadingImage value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class _ButtonLeadingImage implements ButtonLeading {
  const factory _ButtonLeadingImage(final Image image) =
      _$ButtonLeadingImageImpl;

  Image get image;
  @JsonKey(ignore: true)
  _$$ButtonLeadingImageImplCopyWith<_$ButtonLeadingImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
