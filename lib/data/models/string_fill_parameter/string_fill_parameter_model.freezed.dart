// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'string_fill_parameter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StringFillParameterModel _$StringFillParameterModelFromJson(
    Map<String, dynamic> json) {
  return _StringFillParameterModel.fromJson(json);
}

/// @nodoc
mixin _$StringFillParameterModel {
  String? get fullName => throw _privateConstructorUsedError;
  String? get themeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringFillParameterModelCopyWith<StringFillParameterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringFillParameterModelCopyWith<$Res> {
  factory $StringFillParameterModelCopyWith(StringFillParameterModel value,
          $Res Function(StringFillParameterModel) then) =
      _$StringFillParameterModelCopyWithImpl<$Res, StringFillParameterModel>;
  @useResult
  $Res call({String? fullName, String? themeName});
}

/// @nodoc
class _$StringFillParameterModelCopyWithImpl<$Res,
        $Val extends StringFillParameterModel>
    implements $StringFillParameterModelCopyWith<$Res> {
  _$StringFillParameterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? themeName = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      themeName: freezed == themeName
          ? _value.themeName
          : themeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringFillParameterModelImplCopyWith<$Res>
    implements $StringFillParameterModelCopyWith<$Res> {
  factory _$$StringFillParameterModelImplCopyWith(
          _$StringFillParameterModelImpl value,
          $Res Function(_$StringFillParameterModelImpl) then) =
      __$$StringFillParameterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fullName, String? themeName});
}

/// @nodoc
class __$$StringFillParameterModelImplCopyWithImpl<$Res>
    extends _$StringFillParameterModelCopyWithImpl<$Res,
        _$StringFillParameterModelImpl>
    implements _$$StringFillParameterModelImplCopyWith<$Res> {
  __$$StringFillParameterModelImplCopyWithImpl(
      _$StringFillParameterModelImpl _value,
      $Res Function(_$StringFillParameterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? themeName = freezed,
  }) {
    return _then(_$StringFillParameterModelImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      themeName: freezed == themeName
          ? _value.themeName
          : themeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringFillParameterModelImpl implements _StringFillParameterModel {
  const _$StringFillParameterModelImpl({this.fullName, this.themeName});

  factory _$StringFillParameterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringFillParameterModelImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? themeName;

  @override
  String toString() {
    return 'StringFillParameterModel(fullName: $fullName, themeName: $themeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringFillParameterModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.themeName, themeName) ||
                other.themeName == themeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, themeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringFillParameterModelImplCopyWith<_$StringFillParameterModelImpl>
      get copyWith => __$$StringFillParameterModelImplCopyWithImpl<
          _$StringFillParameterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringFillParameterModelImplToJson(
      this,
    );
  }
}

abstract class _StringFillParameterModel implements StringFillParameterModel {
  const factory _StringFillParameterModel(
      {final String? fullName,
      final String? themeName}) = _$StringFillParameterModelImpl;

  factory _StringFillParameterModel.fromJson(Map<String, dynamic> json) =
      _$StringFillParameterModelImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get themeName;
  @override
  @JsonKey(ignore: true)
  _$$StringFillParameterModelImplCopyWith<_$StringFillParameterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
