// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateNotificationModel _$CreateNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _CreateNotificationModel.fromJson(json);
}

/// @nodoc
mixin _$CreateNotificationModel {
  @JsonKey(name: 'app_id')
  String get appId => throw _privateConstructorUsedError;
  WordTranslation get headings => throw _privateConstructorUsedError;
  WordTranslation get contents => throw _privateConstructorUsedError;
  AdditionalDataModel get data => throw _privateConstructorUsedError;
  List<NotifFiltersParametersItemModel> get filters =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'target_channels')
  String? get targetChannels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateNotificationModelCopyWith<CreateNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNotificationModelCopyWith<$Res> {
  factory $CreateNotificationModelCopyWith(CreateNotificationModel value,
          $Res Function(CreateNotificationModel) then) =
      _$CreateNotificationModelCopyWithImpl<$Res, CreateNotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'app_id') String appId,
      WordTranslation headings,
      WordTranslation contents,
      AdditionalDataModel data,
      List<NotifFiltersParametersItemModel> filters,
      @JsonKey(name: 'target_channels') String? targetChannels});

  $WordTranslationCopyWith<$Res> get headings;
  $WordTranslationCopyWith<$Res> get contents;
  $AdditionalDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateNotificationModelCopyWithImpl<$Res,
        $Val extends CreateNotificationModel>
    implements $CreateNotificationModelCopyWith<$Res> {
  _$CreateNotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? headings = null,
    Object? contents = null,
    Object? data = null,
    Object? filters = null,
    Object? targetChannels = freezed,
  }) {
    return _then(_value.copyWith(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      headings: null == headings
          ? _value.headings
          : headings // ignore: cast_nullable_to_non_nullable
              as WordTranslation,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as WordTranslation,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AdditionalDataModel,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<NotifFiltersParametersItemModel>,
      targetChannels: freezed == targetChannels
          ? _value.targetChannels
          : targetChannels // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WordTranslationCopyWith<$Res> get headings {
    return $WordTranslationCopyWith<$Res>(_value.headings, (value) {
      return _then(_value.copyWith(headings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WordTranslationCopyWith<$Res> get contents {
    return $WordTranslationCopyWith<$Res>(_value.contents, (value) {
      return _then(_value.copyWith(contents: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionalDataModelCopyWith<$Res> get data {
    return $AdditionalDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateNotificationModelImplCopyWith<$Res>
    implements $CreateNotificationModelCopyWith<$Res> {
  factory _$$CreateNotificationModelImplCopyWith(
          _$CreateNotificationModelImpl value,
          $Res Function(_$CreateNotificationModelImpl) then) =
      __$$CreateNotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'app_id') String appId,
      WordTranslation headings,
      WordTranslation contents,
      AdditionalDataModel data,
      List<NotifFiltersParametersItemModel> filters,
      @JsonKey(name: 'target_channels') String? targetChannels});

  @override
  $WordTranslationCopyWith<$Res> get headings;
  @override
  $WordTranslationCopyWith<$Res> get contents;
  @override
  $AdditionalDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateNotificationModelImplCopyWithImpl<$Res>
    extends _$CreateNotificationModelCopyWithImpl<$Res,
        _$CreateNotificationModelImpl>
    implements _$$CreateNotificationModelImplCopyWith<$Res> {
  __$$CreateNotificationModelImplCopyWithImpl(
      _$CreateNotificationModelImpl _value,
      $Res Function(_$CreateNotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? headings = null,
    Object? contents = null,
    Object? data = null,
    Object? filters = null,
    Object? targetChannels = freezed,
  }) {
    return _then(_$CreateNotificationModelImpl(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      headings: null == headings
          ? _value.headings
          : headings // ignore: cast_nullable_to_non_nullable
              as WordTranslation,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as WordTranslation,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AdditionalDataModel,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<NotifFiltersParametersItemModel>,
      targetChannels: freezed == targetChannels
          ? _value.targetChannels
          : targetChannels // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateNotificationModelImpl implements _CreateNotificationModel {
  const _$CreateNotificationModelImpl(
      {@JsonKey(name: 'app_id') required this.appId,
      required this.headings,
      required this.contents,
      required this.data,
      required final List<NotifFiltersParametersItemModel> filters,
      @JsonKey(name: 'target_channels') this.targetChannels})
      : _filters = filters;

  factory _$CreateNotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateNotificationModelImplFromJson(json);

  @override
  @JsonKey(name: 'app_id')
  final String appId;
  @override
  final WordTranslation headings;
  @override
  final WordTranslation contents;
  @override
  final AdditionalDataModel data;
  final List<NotifFiltersParametersItemModel> _filters;
  @override
  List<NotifFiltersParametersItemModel> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  @JsonKey(name: 'target_channels')
  final String? targetChannels;

  @override
  String toString() {
    return 'CreateNotificationModel(appId: $appId, headings: $headings, contents: $contents, data: $data, filters: $filters, targetChannels: $targetChannels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNotificationModelImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.headings, headings) ||
                other.headings == headings) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.targetChannels, targetChannels) ||
                other.targetChannels == targetChannels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appId, headings, contents, data,
      const DeepCollectionEquality().hash(_filters), targetChannels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNotificationModelImplCopyWith<_$CreateNotificationModelImpl>
      get copyWith => __$$CreateNotificationModelImplCopyWithImpl<
          _$CreateNotificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateNotificationModelImplToJson(
      this,
    );
  }
}

abstract class _CreateNotificationModel implements CreateNotificationModel {
  const factory _CreateNotificationModel(
          {@JsonKey(name: 'app_id') required final String appId,
          required final WordTranslation headings,
          required final WordTranslation contents,
          required final AdditionalDataModel data,
          required final List<NotifFiltersParametersItemModel> filters,
          @JsonKey(name: 'target_channels') final String? targetChannels}) =
      _$CreateNotificationModelImpl;

  factory _CreateNotificationModel.fromJson(Map<String, dynamic> json) =
      _$CreateNotificationModelImpl.fromJson;

  @override
  @JsonKey(name: 'app_id')
  String get appId;
  @override
  WordTranslation get headings;
  @override
  WordTranslation get contents;
  @override
  AdditionalDataModel get data;
  @override
  List<NotifFiltersParametersItemModel> get filters;
  @override
  @JsonKey(name: 'target_channels')
  String? get targetChannels;
  @override
  @JsonKey(ignore: true)
  _$$CreateNotificationModelImplCopyWith<_$CreateNotificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotifFiltersParametersItemModel _$NotifFiltersParametersItemModelFromJson(
    Map<String, dynamic> json) {
  return _NotifFiltersParametersItemModel.fromJson(json);
}

/// @nodoc
mixin _$NotifFiltersParametersItemModel {
  String get field => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get relation => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotifFiltersParametersItemModelCopyWith<NotifFiltersParametersItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifFiltersParametersItemModelCopyWith<$Res> {
  factory $NotifFiltersParametersItemModelCopyWith(
          NotifFiltersParametersItemModel value,
          $Res Function(NotifFiltersParametersItemModel) then) =
      _$NotifFiltersParametersItemModelCopyWithImpl<$Res,
          NotifFiltersParametersItemModel>;
  @useResult
  $Res call({String field, String key, String relation, String value});
}

/// @nodoc
class _$NotifFiltersParametersItemModelCopyWithImpl<$Res,
        $Val extends NotifFiltersParametersItemModel>
    implements $NotifFiltersParametersItemModelCopyWith<$Res> {
  _$NotifFiltersParametersItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? key = null,
    Object? relation = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      relation: null == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifFiltersParametersItemModelImplCopyWith<$Res>
    implements $NotifFiltersParametersItemModelCopyWith<$Res> {
  factory _$$NotifFiltersParametersItemModelImplCopyWith(
          _$NotifFiltersParametersItemModelImpl value,
          $Res Function(_$NotifFiltersParametersItemModelImpl) then) =
      __$$NotifFiltersParametersItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, String key, String relation, String value});
}

/// @nodoc
class __$$NotifFiltersParametersItemModelImplCopyWithImpl<$Res>
    extends _$NotifFiltersParametersItemModelCopyWithImpl<$Res,
        _$NotifFiltersParametersItemModelImpl>
    implements _$$NotifFiltersParametersItemModelImplCopyWith<$Res> {
  __$$NotifFiltersParametersItemModelImplCopyWithImpl(
      _$NotifFiltersParametersItemModelImpl _value,
      $Res Function(_$NotifFiltersParametersItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? key = null,
    Object? relation = null,
    Object? value = null,
  }) {
    return _then(_$NotifFiltersParametersItemModelImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      relation: null == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifFiltersParametersItemModelImpl
    implements _NotifFiltersParametersItemModel {
  const _$NotifFiltersParametersItemModelImpl(
      {required this.field,
      required this.key,
      required this.relation,
      required this.value});

  factory _$NotifFiltersParametersItemModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotifFiltersParametersItemModelImplFromJson(json);

  @override
  final String field;
  @override
  final String key;
  @override
  final String relation;
  @override
  final String value;

  @override
  String toString() {
    return 'NotifFiltersParametersItemModel(field: $field, key: $key, relation: $relation, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifFiltersParametersItemModelImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, field, key, relation, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifFiltersParametersItemModelImplCopyWith<
          _$NotifFiltersParametersItemModelImpl>
      get copyWith => __$$NotifFiltersParametersItemModelImplCopyWithImpl<
          _$NotifFiltersParametersItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifFiltersParametersItemModelImplToJson(
      this,
    );
  }
}

abstract class _NotifFiltersParametersItemModel
    implements NotifFiltersParametersItemModel {
  const factory _NotifFiltersParametersItemModel(
      {required final String field,
      required final String key,
      required final String relation,
      required final String value}) = _$NotifFiltersParametersItemModelImpl;

  factory _NotifFiltersParametersItemModel.fromJson(Map<String, dynamic> json) =
      _$NotifFiltersParametersItemModelImpl.fromJson;

  @override
  String get field;
  @override
  String get key;
  @override
  String get relation;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$NotifFiltersParametersItemModelImplCopyWith<
          _$NotifFiltersParametersItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdditionalDataModel _$AdditionalDataModelFromJson(Map<String, dynamic> json) {
  return _AdditionalDataModel.fromJson(json);
}

/// @nodoc
mixin _$AdditionalDataModel {
  @JsonKey(name: 'theme_shared', defaultValue: false)
  bool get themeShared => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalDataModelCopyWith<AdditionalDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalDataModelCopyWith<$Res> {
  factory $AdditionalDataModelCopyWith(
          AdditionalDataModel value, $Res Function(AdditionalDataModel) then) =
      _$AdditionalDataModelCopyWithImpl<$Res, AdditionalDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'theme_shared', defaultValue: false) bool themeShared});
}

/// @nodoc
class _$AdditionalDataModelCopyWithImpl<$Res, $Val extends AdditionalDataModel>
    implements $AdditionalDataModelCopyWith<$Res> {
  _$AdditionalDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeShared = null,
  }) {
    return _then(_value.copyWith(
      themeShared: null == themeShared
          ? _value.themeShared
          : themeShared // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalDataModelImplCopyWith<$Res>
    implements $AdditionalDataModelCopyWith<$Res> {
  factory _$$AdditionalDataModelImplCopyWith(_$AdditionalDataModelImpl value,
          $Res Function(_$AdditionalDataModelImpl) then) =
      __$$AdditionalDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'theme_shared', defaultValue: false) bool themeShared});
}

/// @nodoc
class __$$AdditionalDataModelImplCopyWithImpl<$Res>
    extends _$AdditionalDataModelCopyWithImpl<$Res, _$AdditionalDataModelImpl>
    implements _$$AdditionalDataModelImplCopyWith<$Res> {
  __$$AdditionalDataModelImplCopyWithImpl(_$AdditionalDataModelImpl _value,
      $Res Function(_$AdditionalDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeShared = null,
  }) {
    return _then(_$AdditionalDataModelImpl(
      themeShared: null == themeShared
          ? _value.themeShared
          : themeShared // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalDataModelImpl implements _AdditionalDataModel {
  const _$AdditionalDataModelImpl(
      {@JsonKey(name: 'theme_shared', defaultValue: false)
      required this.themeShared});

  factory _$AdditionalDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'theme_shared', defaultValue: false)
  final bool themeShared;

  @override
  String toString() {
    return 'AdditionalDataModel(themeShared: $themeShared)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalDataModelImpl &&
            (identical(other.themeShared, themeShared) ||
                other.themeShared == themeShared));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeShared);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalDataModelImplCopyWith<_$AdditionalDataModelImpl> get copyWith =>
      __$$AdditionalDataModelImplCopyWithImpl<_$AdditionalDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalDataModelImplToJson(
      this,
    );
  }
}

abstract class _AdditionalDataModel implements AdditionalDataModel {
  const factory _AdditionalDataModel(
      {@JsonKey(name: 'theme_shared', defaultValue: false)
      required final bool themeShared}) = _$AdditionalDataModelImpl;

  factory _AdditionalDataModel.fromJson(Map<String, dynamic> json) =
      _$AdditionalDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'theme_shared', defaultValue: false)
  bool get themeShared;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalDataModelImplCopyWith<_$AdditionalDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
