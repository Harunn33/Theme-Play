// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_access_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditAccessModel _$EditAccessModelFromJson(Map<String, dynamic> json) {
  return _EditAccessModel.fromJson(json);
}

/// @nodoc
mixin _$EditAccessModel {
  @JsonKey(name: 'theme_edit_access', defaultValue: false)
  bool get themeEditAccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditAccessModelCopyWith<EditAccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAccessModelCopyWith<$Res> {
  factory $EditAccessModelCopyWith(
          EditAccessModel value, $Res Function(EditAccessModel) then) =
      _$EditAccessModelCopyWithImpl<$Res, EditAccessModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'theme_edit_access', defaultValue: false)
      bool themeEditAccess});
}

/// @nodoc
class _$EditAccessModelCopyWithImpl<$Res, $Val extends EditAccessModel>
    implements $EditAccessModelCopyWith<$Res> {
  _$EditAccessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeEditAccess = null,
  }) {
    return _then(_value.copyWith(
      themeEditAccess: null == themeEditAccess
          ? _value.themeEditAccess
          : themeEditAccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditAccessModelImplCopyWith<$Res>
    implements $EditAccessModelCopyWith<$Res> {
  factory _$$EditAccessModelImplCopyWith(_$EditAccessModelImpl value,
          $Res Function(_$EditAccessModelImpl) then) =
      __$$EditAccessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'theme_edit_access', defaultValue: false)
      bool themeEditAccess});
}

/// @nodoc
class __$$EditAccessModelImplCopyWithImpl<$Res>
    extends _$EditAccessModelCopyWithImpl<$Res, _$EditAccessModelImpl>
    implements _$$EditAccessModelImplCopyWith<$Res> {
  __$$EditAccessModelImplCopyWithImpl(
      _$EditAccessModelImpl _value, $Res Function(_$EditAccessModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeEditAccess = null,
  }) {
    return _then(_$EditAccessModelImpl(
      themeEditAccess: null == themeEditAccess
          ? _value.themeEditAccess
          : themeEditAccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditAccessModelImpl implements _EditAccessModel {
  const _$EditAccessModelImpl(
      {@JsonKey(name: 'theme_edit_access', defaultValue: false)
      required this.themeEditAccess});

  factory _$EditAccessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditAccessModelImplFromJson(json);

  @override
  @JsonKey(name: 'theme_edit_access', defaultValue: false)
  final bool themeEditAccess;

  @override
  String toString() {
    return 'EditAccessModel(themeEditAccess: $themeEditAccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAccessModelImpl &&
            (identical(other.themeEditAccess, themeEditAccess) ||
                other.themeEditAccess == themeEditAccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeEditAccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAccessModelImplCopyWith<_$EditAccessModelImpl> get copyWith =>
      __$$EditAccessModelImplCopyWithImpl<_$EditAccessModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditAccessModelImplToJson(
      this,
    );
  }
}

abstract class _EditAccessModel implements EditAccessModel {
  const factory _EditAccessModel(
      {@JsonKey(name: 'theme_edit_access', defaultValue: false)
      required final bool themeEditAccess}) = _$EditAccessModelImpl;

  factory _EditAccessModel.fromJson(Map<String, dynamic> json) =
      _$EditAccessModelImpl.fromJson;

  @override
  @JsonKey(name: 'theme_edit_access', defaultValue: false)
  bool get themeEditAccess;
  @override
  @JsonKey(ignore: true)
  _$$EditAccessModelImplCopyWith<_$EditAccessModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
