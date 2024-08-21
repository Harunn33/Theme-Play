// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_codes_to_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SharedCodesToUserModel _$SharedCodesToUserModelFromJson(
    Map<String, dynamic> json) {
  return _SharedCodesToUserModel.fromJson(json);
}

/// @nodoc
mixin _$SharedCodesToUserModel {
  @JsonKey(includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String get createdBy => throw _privateConstructorUsedError;
  List<String>? get codes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SharedCodesToUserModelCopyWith<SharedCodesToUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedCodesToUserModelCopyWith<$Res> {
  factory $SharedCodesToUserModelCopyWith(SharedCodesToUserModel value,
          $Res Function(SharedCodesToUserModel) then) =
      _$SharedCodesToUserModelCopyWithImpl<$Res, SharedCodesToUserModel>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String? id,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "created_by") String createdBy,
      List<String>? codes});
}

/// @nodoc
class _$SharedCodesToUserModelCopyWithImpl<$Res,
        $Val extends SharedCodesToUserModel>
    implements $SharedCodesToUserModelCopyWith<$Res> {
  _$SharedCodesToUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? codes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      codes: freezed == codes
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharedCodesToUserModelImplCopyWith<$Res>
    implements $SharedCodesToUserModelCopyWith<$Res> {
  factory _$$SharedCodesToUserModelImplCopyWith(
          _$SharedCodesToUserModelImpl value,
          $Res Function(_$SharedCodesToUserModelImpl) then) =
      __$$SharedCodesToUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String? id,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "created_by") String createdBy,
      List<String>? codes});
}

/// @nodoc
class __$$SharedCodesToUserModelImplCopyWithImpl<$Res>
    extends _$SharedCodesToUserModelCopyWithImpl<$Res,
        _$SharedCodesToUserModelImpl>
    implements _$$SharedCodesToUserModelImplCopyWith<$Res> {
  __$$SharedCodesToUserModelImplCopyWithImpl(
      _$SharedCodesToUserModelImpl _value,
      $Res Function(_$SharedCodesToUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? codes = freezed,
  }) {
    return _then(_$SharedCodesToUserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      codes: freezed == codes
          ? _value._codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedCodesToUserModelImpl implements _SharedCodesToUserModel {
  const _$SharedCodesToUserModelImpl(
      {@JsonKey(includeToJson: false) this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "created_by") required this.createdBy,
      final List<String>? codes})
      : _codes = codes;

  factory _$SharedCodesToUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedCodesToUserModelImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "created_by")
  final String createdBy;
  final List<String>? _codes;
  @override
  List<String>? get codes {
    final value = _codes;
    if (value == null) return null;
    if (_codes is EqualUnmodifiableListView) return _codes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SharedCodesToUserModel(id: $id, createdAt: $createdAt, createdBy: $createdBy, codes: $codes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedCodesToUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(other._codes, _codes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, createdBy,
      const DeepCollectionEquality().hash(_codes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedCodesToUserModelImplCopyWith<_$SharedCodesToUserModelImpl>
      get copyWith => __$$SharedCodesToUserModelImplCopyWithImpl<
          _$SharedCodesToUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedCodesToUserModelImplToJson(
      this,
    );
  }
}

abstract class _SharedCodesToUserModel implements SharedCodesToUserModel {
  const factory _SharedCodesToUserModel(
      {@JsonKey(includeToJson: false) final String? id,
      @JsonKey(name: "created_at") required final String createdAt,
      @JsonKey(name: "created_by") required final String createdBy,
      final List<String>? codes}) = _$SharedCodesToUserModelImpl;

  factory _SharedCodesToUserModel.fromJson(Map<String, dynamic> json) =
      _$SharedCodesToUserModelImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "created_by")
  String get createdBy;
  @override
  List<String>? get codes;
  @override
  @JsonKey(ignore: true)
  _$$SharedCodesToUserModelImplCopyWith<_$SharedCodesToUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
