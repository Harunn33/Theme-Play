// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;
  WordTranslation get title => throw _privateConstructorUsedError;
  WordTranslation get content => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'shared_user')
  String? get sharedUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'theme_share_code')
  String? get themeShareCode => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_by') String createdBy,
      WordTranslation title,
      WordTranslation content,
      String type,
      @JsonKey(name: 'shared_user') String? sharedUser,
      @JsonKey(name: 'theme_share_code') String? themeShareCode,
      @JsonKey(includeToJson: false, name: 'created_at') String? createdAt,
      @JsonKey(includeToJson: false) String? id});

  $WordTranslationCopyWith<$Res> get title;
  $WordTranslationCopyWith<$Res> get content;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdBy = null,
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? sharedUser = freezed,
    Object? themeShareCode = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as WordTranslation,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as WordTranslation,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sharedUser: freezed == sharedUser
          ? _value.sharedUser
          : sharedUser // ignore: cast_nullable_to_non_nullable
              as String?,
      themeShareCode: freezed == themeShareCode
          ? _value.themeShareCode
          : themeShareCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WordTranslationCopyWith<$Res> get title {
    return $WordTranslationCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WordTranslationCopyWith<$Res> get content {
    return $WordTranslationCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_by') String createdBy,
      WordTranslation title,
      WordTranslation content,
      String type,
      @JsonKey(name: 'shared_user') String? sharedUser,
      @JsonKey(name: 'theme_share_code') String? themeShareCode,
      @JsonKey(includeToJson: false, name: 'created_at') String? createdAt,
      @JsonKey(includeToJson: false) String? id});

  @override
  $WordTranslationCopyWith<$Res> get title;
  @override
  $WordTranslationCopyWith<$Res> get content;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdBy = null,
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? sharedUser = freezed,
    Object? themeShareCode = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$NotificationModelImpl(
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as WordTranslation,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as WordTranslation,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sharedUser: freezed == sharedUser
          ? _value.sharedUser
          : sharedUser // ignore: cast_nullable_to_non_nullable
              as String?,
      themeShareCode: freezed == themeShareCode
          ? _value.themeShareCode
          : themeShareCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl(
      {@JsonKey(name: 'created_by') required this.createdBy,
      required this.title,
      required this.content,
      required this.type,
      @JsonKey(name: 'shared_user') this.sharedUser,
      @JsonKey(name: 'theme_share_code') this.themeShareCode,
      @JsonKey(includeToJson: false, name: 'created_at') this.createdAt,
      @JsonKey(includeToJson: false) this.id});

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: 'created_by')
  final String createdBy;
  @override
  final WordTranslation title;
  @override
  final WordTranslation content;
  @override
  final String type;
  @override
  @JsonKey(name: 'shared_user')
  final String? sharedUser;
  @override
  @JsonKey(name: 'theme_share_code')
  final String? themeShareCode;
  @override
  @JsonKey(includeToJson: false, name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(includeToJson: false)
  final String? id;

  @override
  String toString() {
    return 'NotificationModel(createdBy: $createdBy, title: $title, content: $content, type: $type, sharedUser: $sharedUser, themeShareCode: $themeShareCode, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sharedUser, sharedUser) ||
                other.sharedUser == sharedUser) &&
            (identical(other.themeShareCode, themeShareCode) ||
                other.themeShareCode == themeShareCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdBy, title, content, type,
      sharedUser, themeShareCode, createdAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
          {@JsonKey(name: 'created_by') required final String createdBy,
          required final WordTranslation title,
          required final WordTranslation content,
          required final String type,
          @JsonKey(name: 'shared_user') final String? sharedUser,
          @JsonKey(name: 'theme_share_code') final String? themeShareCode,
          @JsonKey(includeToJson: false, name: 'created_at')
          final String? createdAt,
          @JsonKey(includeToJson: false) final String? id}) =
      _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: 'created_by')
  String get createdBy;
  @override
  WordTranslation get title;
  @override
  WordTranslation get content;
  @override
  String get type;
  @override
  @JsonKey(name: 'shared_user')
  String? get sharedUser;
  @override
  @JsonKey(name: 'theme_share_code')
  String? get themeShareCode;
  @override
  @JsonKey(includeToJson: false, name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(includeToJson: false)
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordTranslation _$WordTranslationFromJson(Map<String, dynamic> json) {
  return _WordTranslation.fromJson(json);
}

/// @nodoc
mixin _$WordTranslation {
  String get en => throw _privateConstructorUsedError;
  String get tr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordTranslationCopyWith<WordTranslation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordTranslationCopyWith<$Res> {
  factory $WordTranslationCopyWith(
          WordTranslation value, $Res Function(WordTranslation) then) =
      _$WordTranslationCopyWithImpl<$Res, WordTranslation>;
  @useResult
  $Res call({String en, String tr});
}

/// @nodoc
class _$WordTranslationCopyWithImpl<$Res, $Val extends WordTranslation>
    implements $WordTranslationCopyWith<$Res> {
  _$WordTranslationCopyWithImpl(this._value, this._then);

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
abstract class _$$WordTranslationImplCopyWith<$Res>
    implements $WordTranslationCopyWith<$Res> {
  factory _$$WordTranslationImplCopyWith(_$WordTranslationImpl value,
          $Res Function(_$WordTranslationImpl) then) =
      __$$WordTranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en, String tr});
}

/// @nodoc
class __$$WordTranslationImplCopyWithImpl<$Res>
    extends _$WordTranslationCopyWithImpl<$Res, _$WordTranslationImpl>
    implements _$$WordTranslationImplCopyWith<$Res> {
  __$$WordTranslationImplCopyWithImpl(
      _$WordTranslationImpl _value, $Res Function(_$WordTranslationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? tr = null,
  }) {
    return _then(_$WordTranslationImpl(
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
class _$WordTranslationImpl implements _WordTranslation {
  const _$WordTranslationImpl({required this.en, required this.tr});

  factory _$WordTranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordTranslationImplFromJson(json);

  @override
  final String en;
  @override
  final String tr;

  @override
  String toString() {
    return 'WordTranslation(en: $en, tr: $tr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordTranslationImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.tr, tr) || other.tr == tr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, tr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordTranslationImplCopyWith<_$WordTranslationImpl> get copyWith =>
      __$$WordTranslationImplCopyWithImpl<_$WordTranslationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordTranslationImplToJson(
      this,
    );
  }
}

abstract class _WordTranslation implements WordTranslation {
  const factory _WordTranslation(
      {required final String en,
      required final String tr}) = _$WordTranslationImpl;

  factory _WordTranslation.fromJson(Map<String, dynamic> json) =
      _$WordTranslationImpl.fromJson;

  @override
  String get en;
  @override
  String get tr;
  @override
  @JsonKey(ignore: true)
  _$$WordTranslationImplCopyWith<_$WordTranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
