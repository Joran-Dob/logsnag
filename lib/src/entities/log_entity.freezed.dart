// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogEntity _$LogEntityFromJson(Map<String, dynamic> json) {
  return _LogEntity.fromJson(json);
}

/// @nodoc
mixin _$LogEntity {
  String get channel => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  Map<String, dynamic>? get tags => throw _privateConstructorUsedError;
  bool? get notify => throw _privateConstructorUsedError;
  String? get parser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogEntityCopyWith<LogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogEntityCopyWith<$Res> {
  factory $LogEntityCopyWith(LogEntity value, $Res Function(LogEntity) then) =
      _$LogEntityCopyWithImpl<$Res, LogEntity>;
  @useResult
  $Res call(
      {String channel,
      String event,
      String? description,
      String? icon,
      Map<String, dynamic>? tags,
      bool? notify,
      String? parser});
}

/// @nodoc
class _$LogEntityCopyWithImpl<$Res, $Val extends LogEntity>
    implements $LogEntityCopyWith<$Res> {
  _$LogEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? event = null,
    Object? description = freezed,
    Object? icon = freezed,
    Object? tags = freezed,
    Object? notify = freezed,
    Object? parser = freezed,
  }) {
    return _then(_value.copyWith(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      notify: freezed == notify
          ? _value.notify
          : notify // ignore: cast_nullable_to_non_nullable
              as bool?,
      parser: freezed == parser
          ? _value.parser
          : parser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogEntityCopyWith<$Res> implements $LogEntityCopyWith<$Res> {
  factory _$$_LogEntityCopyWith(
          _$_LogEntity value, $Res Function(_$_LogEntity) then) =
      __$$_LogEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channel,
      String event,
      String? description,
      String? icon,
      Map<String, dynamic>? tags,
      bool? notify,
      String? parser});
}

/// @nodoc
class __$$_LogEntityCopyWithImpl<$Res>
    extends _$LogEntityCopyWithImpl<$Res, _$_LogEntity>
    implements _$$_LogEntityCopyWith<$Res> {
  __$$_LogEntityCopyWithImpl(
      _$_LogEntity _value, $Res Function(_$_LogEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? event = null,
    Object? description = freezed,
    Object? icon = freezed,
    Object? tags = freezed,
    Object? notify = freezed,
    Object? parser = freezed,
  }) {
    return _then(_$_LogEntity(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      notify: freezed == notify
          ? _value.notify
          : notify // ignore: cast_nullable_to_non_nullable
              as bool?,
      parser: freezed == parser
          ? _value.parser
          : parser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogEntity implements _LogEntity {
  _$_LogEntity(
      {required this.channel,
      required this.event,
      this.description,
      this.icon,
      final Map<String, dynamic>? tags,
      this.notify,
      this.parser})
      : _tags = tags;

  factory _$_LogEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LogEntityFromJson(json);

  @override
  final String channel;
  @override
  final String event;
  @override
  final String? description;
  @override
  final String? icon;
  final Map<String, dynamic>? _tags;
  @override
  Map<String, dynamic>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableMapView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool? notify;
  @override
  final String? parser;

  @override
  String toString() {
    return 'LogEntity(channel: $channel, event: $event, description: $description, icon: $icon, tags: $tags, notify: $notify, parser: $parser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogEntity &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.notify, notify) || other.notify == notify) &&
            (identical(other.parser, parser) || other.parser == parser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channel, event, description,
      icon, const DeepCollectionEquality().hash(_tags), notify, parser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogEntityCopyWith<_$_LogEntity> get copyWith =>
      __$$_LogEntityCopyWithImpl<_$_LogEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogEntityToJson(
      this,
    );
  }
}

abstract class _LogEntity implements LogEntity {
  factory _LogEntity(
      {required final String channel,
      required final String event,
      final String? description,
      final String? icon,
      final Map<String, dynamic>? tags,
      final bool? notify,
      final String? parser}) = _$_LogEntity;

  factory _LogEntity.fromJson(Map<String, dynamic> json) =
      _$_LogEntity.fromJson;

  @override
  String get channel;
  @override
  String get event;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  Map<String, dynamic>? get tags;
  @override
  bool? get notify;
  @override
  String? get parser;
  @override
  @JsonKey(ignore: true)
  _$$_LogEntityCopyWith<_$_LogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
