// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_style_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeStyleModel _$ThemeStyleModelFromJson(Map<String, dynamic> json) {
  return _ThemeStyleModel.fromJson(json);
}

/// @nodoc
mixin _$ThemeStyleModel {
  BaseLocalizedTextModel get title => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_title")
  BaseLocalizedTextModel get subTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "main_message")
  BaseLocalizedTextModel get mainMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "bg_color")
  String get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "title_style")
  TitleStyleModel get titleStyle => throw _privateConstructorUsedError;
  @JsonKey(name: "text_style")
  TextStyleModel get textStyle => throw _privateConstructorUsedError;
  @JsonKey(name: "button_style")
  ButtonStyleModel get buttonStyle => throw _privateConstructorUsedError;
  @JsonKey(name: "slider_style")
  SliderStyleModel get sliderStyle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeStyleModelCopyWith<ThemeStyleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStyleModelCopyWith<$Res> {
  factory $ThemeStyleModelCopyWith(
          ThemeStyleModel value, $Res Function(ThemeStyleModel) then) =
      _$ThemeStyleModelCopyWithImpl<$Res, ThemeStyleModel>;
  @useResult
  $Res call(
      {BaseLocalizedTextModel title,
      @JsonKey(name: "sub_title") BaseLocalizedTextModel subTitle,
      @JsonKey(name: "main_message") BaseLocalizedTextModel mainMessage,
      @JsonKey(name: "bg_color") String bgColor,
      @JsonKey(name: "title_style") TitleStyleModel titleStyle,
      @JsonKey(name: "text_style") TextStyleModel textStyle,
      @JsonKey(name: "button_style") ButtonStyleModel buttonStyle,
      @JsonKey(name: "slider_style") SliderStyleModel sliderStyle});

  $BaseLocalizedTextModelCopyWith<$Res> get title;
  $BaseLocalizedTextModelCopyWith<$Res> get subTitle;
  $BaseLocalizedTextModelCopyWith<$Res> get mainMessage;
  $TitleStyleModelCopyWith<$Res> get titleStyle;
  $TextStyleModelCopyWith<$Res> get textStyle;
  $ButtonStyleModelCopyWith<$Res> get buttonStyle;
  $SliderStyleModelCopyWith<$Res> get sliderStyle;
}

/// @nodoc
class _$ThemeStyleModelCopyWithImpl<$Res, $Val extends ThemeStyleModel>
    implements $ThemeStyleModelCopyWith<$Res> {
  _$ThemeStyleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? mainMessage = null,
    Object? bgColor = null,
    Object? titleStyle = null,
    Object? textStyle = null,
    Object? buttonStyle = null,
    Object? sliderStyle = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BaseLocalizedTextModel,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as BaseLocalizedTextModel,
      mainMessage: null == mainMessage
          ? _value.mainMessage
          : mainMessage // ignore: cast_nullable_to_non_nullable
              as BaseLocalizedTextModel,
      bgColor: null == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String,
      titleStyle: null == titleStyle
          ? _value.titleStyle
          : titleStyle // ignore: cast_nullable_to_non_nullable
              as TitleStyleModel,
      textStyle: null == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyleModel,
      buttonStyle: null == buttonStyle
          ? _value.buttonStyle
          : buttonStyle // ignore: cast_nullable_to_non_nullable
              as ButtonStyleModel,
      sliderStyle: null == sliderStyle
          ? _value.sliderStyle
          : sliderStyle // ignore: cast_nullable_to_non_nullable
              as SliderStyleModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseLocalizedTextModelCopyWith<$Res> get title {
    return $BaseLocalizedTextModelCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseLocalizedTextModelCopyWith<$Res> get subTitle {
    return $BaseLocalizedTextModelCopyWith<$Res>(_value.subTitle, (value) {
      return _then(_value.copyWith(subTitle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseLocalizedTextModelCopyWith<$Res> get mainMessage {
    return $BaseLocalizedTextModelCopyWith<$Res>(_value.mainMessage, (value) {
      return _then(_value.copyWith(mainMessage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TitleStyleModelCopyWith<$Res> get titleStyle {
    return $TitleStyleModelCopyWith<$Res>(_value.titleStyle, (value) {
      return _then(_value.copyWith(titleStyle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextStyleModelCopyWith<$Res> get textStyle {
    return $TextStyleModelCopyWith<$Res>(_value.textStyle, (value) {
      return _then(_value.copyWith(textStyle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ButtonStyleModelCopyWith<$Res> get buttonStyle {
    return $ButtonStyleModelCopyWith<$Res>(_value.buttonStyle, (value) {
      return _then(_value.copyWith(buttonStyle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SliderStyleModelCopyWith<$Res> get sliderStyle {
    return $SliderStyleModelCopyWith<$Res>(_value.sliderStyle, (value) {
      return _then(_value.copyWith(sliderStyle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThemeStyleModelImplCopyWith<$Res>
    implements $ThemeStyleModelCopyWith<$Res> {
  factory _$$ThemeStyleModelImplCopyWith(_$ThemeStyleModelImpl value,
          $Res Function(_$ThemeStyleModelImpl) then) =
      __$$ThemeStyleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseLocalizedTextModel title,
      @JsonKey(name: "sub_title") BaseLocalizedTextModel subTitle,
      @JsonKey(name: "main_message") BaseLocalizedTextModel mainMessage,
      @JsonKey(name: "bg_color") String bgColor,
      @JsonKey(name: "title_style") TitleStyleModel titleStyle,
      @JsonKey(name: "text_style") TextStyleModel textStyle,
      @JsonKey(name: "button_style") ButtonStyleModel buttonStyle,
      @JsonKey(name: "slider_style") SliderStyleModel sliderStyle});

  @override
  $BaseLocalizedTextModelCopyWith<$Res> get title;
  @override
  $BaseLocalizedTextModelCopyWith<$Res> get subTitle;
  @override
  $BaseLocalizedTextModelCopyWith<$Res> get mainMessage;
  @override
  $TitleStyleModelCopyWith<$Res> get titleStyle;
  @override
  $TextStyleModelCopyWith<$Res> get textStyle;
  @override
  $ButtonStyleModelCopyWith<$Res> get buttonStyle;
  @override
  $SliderStyleModelCopyWith<$Res> get sliderStyle;
}

/// @nodoc
class __$$ThemeStyleModelImplCopyWithImpl<$Res>
    extends _$ThemeStyleModelCopyWithImpl<$Res, _$ThemeStyleModelImpl>
    implements _$$ThemeStyleModelImplCopyWith<$Res> {
  __$$ThemeStyleModelImplCopyWithImpl(
      _$ThemeStyleModelImpl _value, $Res Function(_$ThemeStyleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? mainMessage = null,
    Object? bgColor = null,
    Object? titleStyle = null,
    Object? textStyle = null,
    Object? buttonStyle = null,
    Object? sliderStyle = null,
  }) {
    return _then(_$ThemeStyleModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BaseLocalizedTextModel,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as BaseLocalizedTextModel,
      mainMessage: null == mainMessage
          ? _value.mainMessage
          : mainMessage // ignore: cast_nullable_to_non_nullable
              as BaseLocalizedTextModel,
      bgColor: null == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String,
      titleStyle: null == titleStyle
          ? _value.titleStyle
          : titleStyle // ignore: cast_nullable_to_non_nullable
              as TitleStyleModel,
      textStyle: null == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyleModel,
      buttonStyle: null == buttonStyle
          ? _value.buttonStyle
          : buttonStyle // ignore: cast_nullable_to_non_nullable
              as ButtonStyleModel,
      sliderStyle: null == sliderStyle
          ? _value.sliderStyle
          : sliderStyle // ignore: cast_nullable_to_non_nullable
              as SliderStyleModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeStyleModelImpl implements _ThemeStyleModel {
  const _$ThemeStyleModelImpl(
      {required this.title,
      @JsonKey(name: "sub_title") required this.subTitle,
      @JsonKey(name: "main_message") required this.mainMessage,
      @JsonKey(name: "bg_color") required this.bgColor,
      @JsonKey(name: "title_style") required this.titleStyle,
      @JsonKey(name: "text_style") required this.textStyle,
      @JsonKey(name: "button_style") required this.buttonStyle,
      @JsonKey(name: "slider_style") required this.sliderStyle});

  factory _$ThemeStyleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeStyleModelImplFromJson(json);

  @override
  final BaseLocalizedTextModel title;
  @override
  @JsonKey(name: "sub_title")
  final BaseLocalizedTextModel subTitle;
  @override
  @JsonKey(name: "main_message")
  final BaseLocalizedTextModel mainMessage;
  @override
  @JsonKey(name: "bg_color")
  final String bgColor;
  @override
  @JsonKey(name: "title_style")
  final TitleStyleModel titleStyle;
  @override
  @JsonKey(name: "text_style")
  final TextStyleModel textStyle;
  @override
  @JsonKey(name: "button_style")
  final ButtonStyleModel buttonStyle;
  @override
  @JsonKey(name: "slider_style")
  final SliderStyleModel sliderStyle;

  @override
  String toString() {
    return 'ThemeStyleModel(title: $title, subTitle: $subTitle, mainMessage: $mainMessage, bgColor: $bgColor, titleStyle: $titleStyle, textStyle: $textStyle, buttonStyle: $buttonStyle, sliderStyle: $sliderStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStyleModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.mainMessage, mainMessage) ||
                other.mainMessage == mainMessage) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.titleStyle, titleStyle) ||
                other.titleStyle == titleStyle) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.buttonStyle, buttonStyle) ||
                other.buttonStyle == buttonStyle) &&
            (identical(other.sliderStyle, sliderStyle) ||
                other.sliderStyle == sliderStyle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, subTitle, mainMessage,
      bgColor, titleStyle, textStyle, buttonStyle, sliderStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStyleModelImplCopyWith<_$ThemeStyleModelImpl> get copyWith =>
      __$$ThemeStyleModelImplCopyWithImpl<_$ThemeStyleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeStyleModelImplToJson(
      this,
    );
  }
}

abstract class _ThemeStyleModel implements ThemeStyleModel {
  const factory _ThemeStyleModel(
      {required final BaseLocalizedTextModel title,
      @JsonKey(name: "sub_title")
      required final BaseLocalizedTextModel subTitle,
      @JsonKey(name: "main_message")
      required final BaseLocalizedTextModel mainMessage,
      @JsonKey(name: "bg_color") required final String bgColor,
      @JsonKey(name: "title_style") required final TitleStyleModel titleStyle,
      @JsonKey(name: "text_style") required final TextStyleModel textStyle,
      @JsonKey(name: "button_style")
      required final ButtonStyleModel buttonStyle,
      @JsonKey(name: "slider_style")
      required final SliderStyleModel sliderStyle}) = _$ThemeStyleModelImpl;

  factory _ThemeStyleModel.fromJson(Map<String, dynamic> json) =
      _$ThemeStyleModelImpl.fromJson;

  @override
  BaseLocalizedTextModel get title;
  @override
  @JsonKey(name: "sub_title")
  BaseLocalizedTextModel get subTitle;
  @override
  @JsonKey(name: "main_message")
  BaseLocalizedTextModel get mainMessage;
  @override
  @JsonKey(name: "bg_color")
  String get bgColor;
  @override
  @JsonKey(name: "title_style")
  TitleStyleModel get titleStyle;
  @override
  @JsonKey(name: "text_style")
  TextStyleModel get textStyle;
  @override
  @JsonKey(name: "button_style")
  ButtonStyleModel get buttonStyle;
  @override
  @JsonKey(name: "slider_style")
  SliderStyleModel get sliderStyle;
  @override
  @JsonKey(ignore: true)
  _$$ThemeStyleModelImplCopyWith<_$ThemeStyleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseLocalizedTextModel _$BaseLocalizedTextModelFromJson(
    Map<String, dynamic> json) {
  return _BaseLocalizedTextModel.fromJson(json);
}

/// @nodoc
mixin _$BaseLocalizedTextModel {
  String get en => throw _privateConstructorUsedError;
  String get tr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseLocalizedTextModelCopyWith<BaseLocalizedTextModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseLocalizedTextModelCopyWith<$Res> {
  factory $BaseLocalizedTextModelCopyWith(BaseLocalizedTextModel value,
          $Res Function(BaseLocalizedTextModel) then) =
      _$BaseLocalizedTextModelCopyWithImpl<$Res, BaseLocalizedTextModel>;
  @useResult
  $Res call({String en, String tr});
}

/// @nodoc
class _$BaseLocalizedTextModelCopyWithImpl<$Res,
        $Val extends BaseLocalizedTextModel>
    implements $BaseLocalizedTextModelCopyWith<$Res> {
  _$BaseLocalizedTextModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? tr = null,
  }) {
    return _then(_value.copyWith(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseLocalizedTextModelImplCopyWith<$Res>
    implements $BaseLocalizedTextModelCopyWith<$Res> {
  factory _$$BaseLocalizedTextModelImplCopyWith(
          _$BaseLocalizedTextModelImpl value,
          $Res Function(_$BaseLocalizedTextModelImpl) then) =
      __$$BaseLocalizedTextModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en, String tr});
}

/// @nodoc
class __$$BaseLocalizedTextModelImplCopyWithImpl<$Res>
    extends _$BaseLocalizedTextModelCopyWithImpl<$Res,
        _$BaseLocalizedTextModelImpl>
    implements _$$BaseLocalizedTextModelImplCopyWith<$Res> {
  __$$BaseLocalizedTextModelImplCopyWithImpl(
      _$BaseLocalizedTextModelImpl _value,
      $Res Function(_$BaseLocalizedTextModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? tr = null,
  }) {
    return _then(_$BaseLocalizedTextModelImpl(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseLocalizedTextModelImpl implements _BaseLocalizedTextModel {
  const _$BaseLocalizedTextModelImpl({required this.en, required this.tr});

  factory _$BaseLocalizedTextModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseLocalizedTextModelImplFromJson(json);

  @override
  final String en;
  @override
  final String tr;

  @override
  String toString() {
    return 'BaseLocalizedTextModel(en: $en, tr: $tr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseLocalizedTextModelImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.tr, tr) || other.tr == tr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, tr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseLocalizedTextModelImplCopyWith<_$BaseLocalizedTextModelImpl>
      get copyWith => __$$BaseLocalizedTextModelImplCopyWithImpl<
          _$BaseLocalizedTextModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseLocalizedTextModelImplToJson(
      this,
    );
  }
}

abstract class _BaseLocalizedTextModel implements BaseLocalizedTextModel {
  const factory _BaseLocalizedTextModel(
      {required final String en,
      required final String tr}) = _$BaseLocalizedTextModelImpl;

  factory _BaseLocalizedTextModel.fromJson(Map<String, dynamic> json) =
      _$BaseLocalizedTextModelImpl.fromJson;

  @override
  String get en;
  @override
  String get tr;
  @override
  @JsonKey(ignore: true)
  _$$BaseLocalizedTextModelImplCopyWith<_$BaseLocalizedTextModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TitleStyleModel _$TitleStyleModelFromJson(Map<String, dynamic> json) {
  return _TitleStyleModel.fromJson(json);
}

/// @nodoc
mixin _$TitleStyleModel {
  double get size => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: "typewriter_animation_duration")
  double get typewriterAnimationDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleStyleModelCopyWith<TitleStyleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleStyleModelCopyWith<$Res> {
  factory $TitleStyleModelCopyWith(
          TitleStyleModel value, $Res Function(TitleStyleModel) then) =
      _$TitleStyleModelCopyWithImpl<$Res, TitleStyleModel>;
  @useResult
  $Res call(
      {double size,
      String color,
      @JsonKey(name: "typewriter_animation_duration")
      double typewriterAnimationDuration});
}

/// @nodoc
class _$TitleStyleModelCopyWithImpl<$Res, $Val extends TitleStyleModel>
    implements $TitleStyleModelCopyWith<$Res> {
  _$TitleStyleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? color = null,
    Object? typewriterAnimationDuration = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      typewriterAnimationDuration: null == typewriterAnimationDuration
          ? _value.typewriterAnimationDuration
          : typewriterAnimationDuration // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TitleStyleModelImplCopyWith<$Res>
    implements $TitleStyleModelCopyWith<$Res> {
  factory _$$TitleStyleModelImplCopyWith(_$TitleStyleModelImpl value,
          $Res Function(_$TitleStyleModelImpl) then) =
      __$$TitleStyleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double size,
      String color,
      @JsonKey(name: "typewriter_animation_duration")
      double typewriterAnimationDuration});
}

/// @nodoc
class __$$TitleStyleModelImplCopyWithImpl<$Res>
    extends _$TitleStyleModelCopyWithImpl<$Res, _$TitleStyleModelImpl>
    implements _$$TitleStyleModelImplCopyWith<$Res> {
  __$$TitleStyleModelImplCopyWithImpl(
      _$TitleStyleModelImpl _value, $Res Function(_$TitleStyleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? color = null,
    Object? typewriterAnimationDuration = null,
  }) {
    return _then(_$TitleStyleModelImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      typewriterAnimationDuration: null == typewriterAnimationDuration
          ? _value.typewriterAnimationDuration
          : typewriterAnimationDuration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleStyleModelImpl implements _TitleStyleModel {
  const _$TitleStyleModelImpl(
      {required this.size,
      required this.color,
      @JsonKey(name: "typewriter_animation_duration")
      required this.typewriterAnimationDuration});

  factory _$TitleStyleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleStyleModelImplFromJson(json);

  @override
  final double size;
  @override
  final String color;
  @override
  @JsonKey(name: "typewriter_animation_duration")
  final double typewriterAnimationDuration;

  @override
  String toString() {
    return 'TitleStyleModel(size: $size, color: $color, typewriterAnimationDuration: $typewriterAnimationDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleStyleModelImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.typewriterAnimationDuration,
                    typewriterAnimationDuration) ||
                other.typewriterAnimationDuration ==
                    typewriterAnimationDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, size, color, typewriterAnimationDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleStyleModelImplCopyWith<_$TitleStyleModelImpl> get copyWith =>
      __$$TitleStyleModelImplCopyWithImpl<_$TitleStyleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleStyleModelImplToJson(
      this,
    );
  }
}

abstract class _TitleStyleModel implements TitleStyleModel {
  const factory _TitleStyleModel(
          {required final double size,
          required final String color,
          @JsonKey(name: "typewriter_animation_duration")
          required final double typewriterAnimationDuration}) =
      _$TitleStyleModelImpl;

  factory _TitleStyleModel.fromJson(Map<String, dynamic> json) =
      _$TitleStyleModelImpl.fromJson;

  @override
  double get size;
  @override
  String get color;
  @override
  @JsonKey(name: "typewriter_animation_duration")
  double get typewriterAnimationDuration;
  @override
  @JsonKey(ignore: true)
  _$$TitleStyleModelImplCopyWith<_$TitleStyleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextStyleModel _$TextStyleModelFromJson(Map<String, dynamic> json) {
  return _TextStyleModel.fromJson(json);
}

/// @nodoc
mixin _$TextStyleModel {
  double get size => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: "typewriter_animation_duration")
  double get typewriterAnimationDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextStyleModelCopyWith<TextStyleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextStyleModelCopyWith<$Res> {
  factory $TextStyleModelCopyWith(
          TextStyleModel value, $Res Function(TextStyleModel) then) =
      _$TextStyleModelCopyWithImpl<$Res, TextStyleModel>;
  @useResult
  $Res call(
      {double size,
      String color,
      @JsonKey(name: "typewriter_animation_duration")
      double typewriterAnimationDuration});
}

/// @nodoc
class _$TextStyleModelCopyWithImpl<$Res, $Val extends TextStyleModel>
    implements $TextStyleModelCopyWith<$Res> {
  _$TextStyleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? color = null,
    Object? typewriterAnimationDuration = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      typewriterAnimationDuration: null == typewriterAnimationDuration
          ? _value.typewriterAnimationDuration
          : typewriterAnimationDuration // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextStyleModelImplCopyWith<$Res>
    implements $TextStyleModelCopyWith<$Res> {
  factory _$$TextStyleModelImplCopyWith(_$TextStyleModelImpl value,
          $Res Function(_$TextStyleModelImpl) then) =
      __$$TextStyleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double size,
      String color,
      @JsonKey(name: "typewriter_animation_duration")
      double typewriterAnimationDuration});
}

/// @nodoc
class __$$TextStyleModelImplCopyWithImpl<$Res>
    extends _$TextStyleModelCopyWithImpl<$Res, _$TextStyleModelImpl>
    implements _$$TextStyleModelImplCopyWith<$Res> {
  __$$TextStyleModelImplCopyWithImpl(
      _$TextStyleModelImpl _value, $Res Function(_$TextStyleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? color = null,
    Object? typewriterAnimationDuration = null,
  }) {
    return _then(_$TextStyleModelImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      typewriterAnimationDuration: null == typewriterAnimationDuration
          ? _value.typewriterAnimationDuration
          : typewriterAnimationDuration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextStyleModelImpl implements _TextStyleModel {
  const _$TextStyleModelImpl(
      {required this.size,
      required this.color,
      @JsonKey(name: "typewriter_animation_duration")
      required this.typewriterAnimationDuration});

  factory _$TextStyleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextStyleModelImplFromJson(json);

  @override
  final double size;
  @override
  final String color;
  @override
  @JsonKey(name: "typewriter_animation_duration")
  final double typewriterAnimationDuration;

  @override
  String toString() {
    return 'TextStyleModel(size: $size, color: $color, typewriterAnimationDuration: $typewriterAnimationDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextStyleModelImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.typewriterAnimationDuration,
                    typewriterAnimationDuration) ||
                other.typewriterAnimationDuration ==
                    typewriterAnimationDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, size, color, typewriterAnimationDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextStyleModelImplCopyWith<_$TextStyleModelImpl> get copyWith =>
      __$$TextStyleModelImplCopyWithImpl<_$TextStyleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextStyleModelImplToJson(
      this,
    );
  }
}

abstract class _TextStyleModel implements TextStyleModel {
  const factory _TextStyleModel(
          {required final double size,
          required final String color,
          @JsonKey(name: "typewriter_animation_duration")
          required final double typewriterAnimationDuration}) =
      _$TextStyleModelImpl;

  factory _TextStyleModel.fromJson(Map<String, dynamic> json) =
      _$TextStyleModelImpl.fromJson;

  @override
  double get size;
  @override
  String get color;
  @override
  @JsonKey(name: "typewriter_animation_duration")
  double get typewriterAnimationDuration;
  @override
  @JsonKey(ignore: true)
  _$$TextStyleModelImplCopyWith<_$TextStyleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ButtonStyleModel _$ButtonStyleModelFromJson(Map<String, dynamic> json) {
  return _ButtonStyleModel.fromJson(json);
}

/// @nodoc
mixin _$ButtonStyleModel {
  double get radius => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ButtonStyleModelCopyWith<ButtonStyleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonStyleModelCopyWith<$Res> {
  factory $ButtonStyleModelCopyWith(
          ButtonStyleModel value, $Res Function(ButtonStyleModel) then) =
      _$ButtonStyleModelCopyWithImpl<$Res, ButtonStyleModel>;
  @useResult
  $Res call({double radius, String color});
}

/// @nodoc
class _$ButtonStyleModelCopyWithImpl<$Res, $Val extends ButtonStyleModel>
    implements $ButtonStyleModelCopyWith<$Res> {
  _$ButtonStyleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radius = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ButtonStyleModelImplCopyWith<$Res>
    implements $ButtonStyleModelCopyWith<$Res> {
  factory _$$ButtonStyleModelImplCopyWith(_$ButtonStyleModelImpl value,
          $Res Function(_$ButtonStyleModelImpl) then) =
      __$$ButtonStyleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double radius, String color});
}

/// @nodoc
class __$$ButtonStyleModelImplCopyWithImpl<$Res>
    extends _$ButtonStyleModelCopyWithImpl<$Res, _$ButtonStyleModelImpl>
    implements _$$ButtonStyleModelImplCopyWith<$Res> {
  __$$ButtonStyleModelImplCopyWithImpl(_$ButtonStyleModelImpl _value,
      $Res Function(_$ButtonStyleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radius = null,
    Object? color = null,
  }) {
    return _then(_$ButtonStyleModelImpl(
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonStyleModelImpl implements _ButtonStyleModel {
  const _$ButtonStyleModelImpl({required this.radius, required this.color});

  factory _$ButtonStyleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonStyleModelImplFromJson(json);

  @override
  final double radius;
  @override
  final String color;

  @override
  String toString() {
    return 'ButtonStyleModel(radius: $radius, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonStyleModelImpl &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, radius, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonStyleModelImplCopyWith<_$ButtonStyleModelImpl> get copyWith =>
      __$$ButtonStyleModelImplCopyWithImpl<_$ButtonStyleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonStyleModelImplToJson(
      this,
    );
  }
}

abstract class _ButtonStyleModel implements ButtonStyleModel {
  const factory _ButtonStyleModel(
      {required final double radius,
      required final String color}) = _$ButtonStyleModelImpl;

  factory _ButtonStyleModel.fromJson(Map<String, dynamic> json) =
      _$ButtonStyleModelImpl.fromJson;

  @override
  double get radius;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$ButtonStyleModelImplCopyWith<_$ButtonStyleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderStyleModel _$SliderStyleModelFromJson(Map<String, dynamic> json) {
  return _SliderStyleModel.fromJson(json);
}

/// @nodoc
mixin _$SliderStyleModel {
  List<String> get images => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  @JsonKey(name: "auto_play")
  bool get autoPlay => throw _privateConstructorUsedError;
  @JsonKey(name: "scroll_direction")
  String get scrollDirection => throw _privateConstructorUsedError;
  @JsonKey(name: "auto_play_interval")
  int get autoPlayInterval => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderStyleModelCopyWith<SliderStyleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderStyleModelCopyWith<$Res> {
  factory $SliderStyleModelCopyWith(
          SliderStyleModel value, $Res Function(SliderStyleModel) then) =
      _$SliderStyleModelCopyWithImpl<$Res, SliderStyleModel>;
  @useResult
  $Res call(
      {List<String> images,
      double radius,
      @JsonKey(name: "auto_play") bool autoPlay,
      @JsonKey(name: "scroll_direction") String scrollDirection,
      @JsonKey(name: "auto_play_interval") int autoPlayInterval});
}

/// @nodoc
class _$SliderStyleModelCopyWithImpl<$Res, $Val extends SliderStyleModel>
    implements $SliderStyleModelCopyWith<$Res> {
  _$SliderStyleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? radius = null,
    Object? autoPlay = null,
    Object? scrollDirection = null,
    Object? autoPlayInterval = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      autoPlay: null == autoPlay
          ? _value.autoPlay
          : autoPlay // ignore: cast_nullable_to_non_nullable
              as bool,
      scrollDirection: null == scrollDirection
          ? _value.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as String,
      autoPlayInterval: null == autoPlayInterval
          ? _value.autoPlayInterval
          : autoPlayInterval // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderStyleModelImplCopyWith<$Res>
    implements $SliderStyleModelCopyWith<$Res> {
  factory _$$SliderStyleModelImplCopyWith(_$SliderStyleModelImpl value,
          $Res Function(_$SliderStyleModelImpl) then) =
      __$$SliderStyleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> images,
      double radius,
      @JsonKey(name: "auto_play") bool autoPlay,
      @JsonKey(name: "scroll_direction") String scrollDirection,
      @JsonKey(name: "auto_play_interval") int autoPlayInterval});
}

/// @nodoc
class __$$SliderStyleModelImplCopyWithImpl<$Res>
    extends _$SliderStyleModelCopyWithImpl<$Res, _$SliderStyleModelImpl>
    implements _$$SliderStyleModelImplCopyWith<$Res> {
  __$$SliderStyleModelImplCopyWithImpl(_$SliderStyleModelImpl _value,
      $Res Function(_$SliderStyleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? radius = null,
    Object? autoPlay = null,
    Object? scrollDirection = null,
    Object? autoPlayInterval = null,
  }) {
    return _then(_$SliderStyleModelImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      autoPlay: null == autoPlay
          ? _value.autoPlay
          : autoPlay // ignore: cast_nullable_to_non_nullable
              as bool,
      scrollDirection: null == scrollDirection
          ? _value.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as String,
      autoPlayInterval: null == autoPlayInterval
          ? _value.autoPlayInterval
          : autoPlayInterval // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderStyleModelImpl implements _SliderStyleModel {
  const _$SliderStyleModelImpl(
      {required final List<String> images,
      required this.radius,
      @JsonKey(name: "auto_play") required this.autoPlay,
      @JsonKey(name: "scroll_direction") required this.scrollDirection,
      @JsonKey(name: "auto_play_interval") required this.autoPlayInterval})
      : _images = images;

  factory _$SliderStyleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderStyleModelImplFromJson(json);

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final double radius;
  @override
  @JsonKey(name: "auto_play")
  final bool autoPlay;
  @override
  @JsonKey(name: "scroll_direction")
  final String scrollDirection;
  @override
  @JsonKey(name: "auto_play_interval")
  final int autoPlayInterval;

  @override
  String toString() {
    return 'SliderStyleModel(images: $images, radius: $radius, autoPlay: $autoPlay, scrollDirection: $scrollDirection, autoPlayInterval: $autoPlayInterval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderStyleModelImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.autoPlay, autoPlay) ||
                other.autoPlay == autoPlay) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.autoPlayInterval, autoPlayInterval) ||
                other.autoPlayInterval == autoPlayInterval));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_images),
      radius,
      autoPlay,
      scrollDirection,
      autoPlayInterval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderStyleModelImplCopyWith<_$SliderStyleModelImpl> get copyWith =>
      __$$SliderStyleModelImplCopyWithImpl<_$SliderStyleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderStyleModelImplToJson(
      this,
    );
  }
}

abstract class _SliderStyleModel implements SliderStyleModel {
  const factory _SliderStyleModel(
      {required final List<String> images,
      required final double radius,
      @JsonKey(name: "auto_play") required final bool autoPlay,
      @JsonKey(name: "scroll_direction") required final String scrollDirection,
      @JsonKey(name: "auto_play_interval")
      required final int autoPlayInterval}) = _$SliderStyleModelImpl;

  factory _SliderStyleModel.fromJson(Map<String, dynamic> json) =
      _$SliderStyleModelImpl.fromJson;

  @override
  List<String> get images;
  @override
  double get radius;
  @override
  @JsonKey(name: "auto_play")
  bool get autoPlay;
  @override
  @JsonKey(name: "scroll_direction")
  String get scrollDirection;
  @override
  @JsonKey(name: "auto_play_interval")
  int get autoPlayInterval;
  @override
  @JsonKey(ignore: true)
  _$$SliderStyleModelImplCopyWith<_$SliderStyleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
