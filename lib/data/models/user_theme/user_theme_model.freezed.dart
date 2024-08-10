// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserThemeModel _$UserThemeModelFromJson(Map<String, dynamic> json) {
  return _UserThemeModel.fromJson(json);
}

/// @nodoc
mixin _$UserThemeModel {
  @JsonKey(name: "created_by")
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "theme_id")
  String get themeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ThemeStyleModel get style => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserThemeModelCopyWith<UserThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserThemeModelCopyWith<$Res> {
  factory $UserThemeModelCopyWith(
          UserThemeModel value, $Res Function(UserThemeModel) then) =
      _$UserThemeModelCopyWithImpl<$Res, UserThemeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "created_by") String createdBy,
      @JsonKey(name: "theme_id") String themeId,
      String name,
      ThemeStyleModel style});

  $ThemeStyleModelCopyWith<$Res> get style;
}

/// @nodoc
class _$UserThemeModelCopyWithImpl<$Res, $Val extends UserThemeModel>
    implements $UserThemeModelCopyWith<$Res> {
  _$UserThemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdBy = null,
    Object? themeId = null,
    Object? name = null,
    Object? style = null,
  }) {
    return _then(_value.copyWith(
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      themeId: null == themeId
          ? _value.themeId
          : themeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ThemeStyleModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThemeStyleModelCopyWith<$Res> get style {
    return $ThemeStyleModelCopyWith<$Res>(_value.style, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserThemeModelImplCopyWith<$Res>
    implements $UserThemeModelCopyWith<$Res> {
  factory _$$UserThemeModelImplCopyWith(_$UserThemeModelImpl value,
          $Res Function(_$UserThemeModelImpl) then) =
      __$$UserThemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "created_by") String createdBy,
      @JsonKey(name: "theme_id") String themeId,
      String name,
      ThemeStyleModel style});

  @override
  $ThemeStyleModelCopyWith<$Res> get style;
}

/// @nodoc
class __$$UserThemeModelImplCopyWithImpl<$Res>
    extends _$UserThemeModelCopyWithImpl<$Res, _$UserThemeModelImpl>
    implements _$$UserThemeModelImplCopyWith<$Res> {
  __$$UserThemeModelImplCopyWithImpl(
      _$UserThemeModelImpl _value, $Res Function(_$UserThemeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdBy = null,
    Object? themeId = null,
    Object? name = null,
    Object? style = null,
  }) {
    return _then(_$UserThemeModelImpl(
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      themeId: null == themeId
          ? _value.themeId
          : themeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ThemeStyleModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserThemeModelImpl implements _UserThemeModel {
  const _$UserThemeModelImpl(
      {@JsonKey(name: "created_by") required this.createdBy,
      @JsonKey(name: "theme_id") required this.themeId,
      required this.name,
      required this.style});

  factory _$UserThemeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserThemeModelImplFromJson(json);

  @override
  @JsonKey(name: "created_by")
  final String createdBy;
  @override
  @JsonKey(name: "theme_id")
  final String themeId;
  @override
  final String name;
  @override
  final ThemeStyleModel style;

  @override
  String toString() {
    return 'UserThemeModel(createdBy: $createdBy, themeId: $themeId, name: $name, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserThemeModelImpl &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.themeId, themeId) || other.themeId == themeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdBy, themeId, name, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserThemeModelImplCopyWith<_$UserThemeModelImpl> get copyWith =>
      __$$UserThemeModelImplCopyWithImpl<_$UserThemeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserThemeModelImplToJson(
      this,
    );
  }
}

abstract class _UserThemeModel implements UserThemeModel {
  const factory _UserThemeModel(
      {@JsonKey(name: "created_by") required final String createdBy,
      @JsonKey(name: "theme_id") required final String themeId,
      required final String name,
      required final ThemeStyleModel style}) = _$UserThemeModelImpl;

  factory _UserThemeModel.fromJson(Map<String, dynamic> json) =
      _$UserThemeModelImpl.fromJson;

  @override
  @JsonKey(name: "created_by")
  String get createdBy;
  @override
  @JsonKey(name: "theme_id")
  String get themeId;
  @override
  String get name;
  @override
  ThemeStyleModel get style;
  @override
  @JsonKey(ignore: true)
  _$$UserThemeModelImplCopyWith<_$UserThemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
