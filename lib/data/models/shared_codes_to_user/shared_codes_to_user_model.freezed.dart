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
  @JsonKey(name: "sharing_user")
  String get sharingUser => throw _privateConstructorUsedError;
  @JsonKey(name: "shared_user")
  String get sharedUser => throw _privateConstructorUsedError;
  @JsonKey(name: "theme_share_code")
  String get themeShareCode => throw _privateConstructorUsedError;
  @JsonKey(name: "theme_edit_access")
  bool get themeEditAccess => throw _privateConstructorUsedError;

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
      @JsonKey(name: "sharing_user") String sharingUser,
      @JsonKey(name: "shared_user") String sharedUser,
      @JsonKey(name: "theme_share_code") String themeShareCode,
      @JsonKey(name: "theme_edit_access") bool themeEditAccess});
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
    Object? sharingUser = null,
    Object? sharedUser = null,
    Object? themeShareCode = null,
    Object? themeEditAccess = null,
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
      sharingUser: null == sharingUser
          ? _value.sharingUser
          : sharingUser // ignore: cast_nullable_to_non_nullable
              as String,
      sharedUser: null == sharedUser
          ? _value.sharedUser
          : sharedUser // ignore: cast_nullable_to_non_nullable
              as String,
      themeShareCode: null == themeShareCode
          ? _value.themeShareCode
          : themeShareCode // ignore: cast_nullable_to_non_nullable
              as String,
      themeEditAccess: null == themeEditAccess
          ? _value.themeEditAccess
          : themeEditAccess // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: "sharing_user") String sharingUser,
      @JsonKey(name: "shared_user") String sharedUser,
      @JsonKey(name: "theme_share_code") String themeShareCode,
      @JsonKey(name: "theme_edit_access") bool themeEditAccess});
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
    Object? sharingUser = null,
    Object? sharedUser = null,
    Object? themeShareCode = null,
    Object? themeEditAccess = null,
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
      sharingUser: null == sharingUser
          ? _value.sharingUser
          : sharingUser // ignore: cast_nullable_to_non_nullable
              as String,
      sharedUser: null == sharedUser
          ? _value.sharedUser
          : sharedUser // ignore: cast_nullable_to_non_nullable
              as String,
      themeShareCode: null == themeShareCode
          ? _value.themeShareCode
          : themeShareCode // ignore: cast_nullable_to_non_nullable
              as String,
      themeEditAccess: null == themeEditAccess
          ? _value.themeEditAccess
          : themeEditAccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedCodesToUserModelImpl implements _SharedCodesToUserModel {
  const _$SharedCodesToUserModelImpl(
      {@JsonKey(includeToJson: false) this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "sharing_user") required this.sharingUser,
      @JsonKey(name: "shared_user") required this.sharedUser,
      @JsonKey(name: "theme_share_code") required this.themeShareCode,
      @JsonKey(name: "theme_edit_access") required this.themeEditAccess});

  factory _$SharedCodesToUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedCodesToUserModelImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "sharing_user")
  final String sharingUser;
  @override
  @JsonKey(name: "shared_user")
  final String sharedUser;
  @override
  @JsonKey(name: "theme_share_code")
  final String themeShareCode;
  @override
  @JsonKey(name: "theme_edit_access")
  final bool themeEditAccess;

  @override
  String toString() {
    return 'SharedCodesToUserModel(id: $id, createdAt: $createdAt, sharingUser: $sharingUser, sharedUser: $sharedUser, themeShareCode: $themeShareCode, themeEditAccess: $themeEditAccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedCodesToUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sharingUser, sharingUser) ||
                other.sharingUser == sharingUser) &&
            (identical(other.sharedUser, sharedUser) ||
                other.sharedUser == sharedUser) &&
            (identical(other.themeShareCode, themeShareCode) ||
                other.themeShareCode == themeShareCode) &&
            (identical(other.themeEditAccess, themeEditAccess) ||
                other.themeEditAccess == themeEditAccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, sharingUser,
      sharedUser, themeShareCode, themeEditAccess);

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
      @JsonKey(name: "sharing_user") required final String sharingUser,
      @JsonKey(name: "shared_user") required final String sharedUser,
      @JsonKey(name: "theme_share_code") required final String themeShareCode,
      @JsonKey(name: "theme_edit_access")
      required final bool themeEditAccess}) = _$SharedCodesToUserModelImpl;

  factory _SharedCodesToUserModel.fromJson(Map<String, dynamic> json) =
      _$SharedCodesToUserModelImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "sharing_user")
  String get sharingUser;
  @override
  @JsonKey(name: "shared_user")
  String get sharedUser;
  @override
  @JsonKey(name: "theme_share_code")
  String get themeShareCode;
  @override
  @JsonKey(name: "theme_edit_access")
  bool get themeEditAccess;
  @override
  @JsonKey(ignore: true)
  _$$SharedCodesToUserModelImplCopyWith<_$SharedCodesToUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
