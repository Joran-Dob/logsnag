// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insight_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsightEntity _$InsightEntityFromJson(Map<String, dynamic> json) {
  return _InsightEntity.fromJson(json);
}

/// @nodoc
mixin _$InsightEntity {
  String get title => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsightEntityCopyWith<InsightEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightEntityCopyWith<$Res> {
  factory $InsightEntityCopyWith(
          InsightEntity value, $Res Function(InsightEntity) then) =
      _$InsightEntityCopyWithImpl<$Res, InsightEntity>;
  @useResult
  $Res call({String title, dynamic value, String? icon});
}

/// @nodoc
class _$InsightEntityCopyWithImpl<$Res, $Val extends InsightEntity>
    implements $InsightEntityCopyWith<$Res> {
  _$InsightEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InsightEntityCopyWith<$Res>
    implements $InsightEntityCopyWith<$Res> {
  factory _$$_InsightEntityCopyWith(
          _$_InsightEntity value, $Res Function(_$_InsightEntity) then) =
      __$$_InsightEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, dynamic value, String? icon});
}

/// @nodoc
class __$$_InsightEntityCopyWithImpl<$Res>
    extends _$InsightEntityCopyWithImpl<$Res, _$_InsightEntity>
    implements _$$_InsightEntityCopyWith<$Res> {
  __$$_InsightEntityCopyWithImpl(
      _$_InsightEntity _value, $Res Function(_$_InsightEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_InsightEntity(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsightEntity implements _InsightEntity {
  _$_InsightEntity({required this.title, required this.value, this.icon})
      : assert(value is int || value is String || value is bool,
            'value should be int, string or bool');

  factory _$_InsightEntity.fromJson(Map<String, dynamic> json) =>
      _$$_InsightEntityFromJson(json);

  @override
  final String title;
  @override
  final dynamic value;
  @override
  final String? icon;

  @override
  String toString() {
    return 'InsightEntity(title: $title, value: $value, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsightEntity &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(value), icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsightEntityCopyWith<_$_InsightEntity> get copyWith =>
      __$$_InsightEntityCopyWithImpl<_$_InsightEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsightEntityToJson(
      this,
    );
  }
}

abstract class _InsightEntity implements InsightEntity {
  factory _InsightEntity(
      {required final String title,
      required final dynamic value,
      final String? icon}) = _$_InsightEntity;

  factory _InsightEntity.fromJson(Map<String, dynamic> json) =
      _$_InsightEntity.fromJson;

  @override
  String get title;
  @override
  dynamic get value;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_InsightEntityCopyWith<_$_InsightEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
