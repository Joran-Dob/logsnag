// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogEntity _$$_LogEntityFromJson(Map<String, dynamic> json) => _$_LogEntity(
      channel: json['channel'] as String,
      event: json['event'] as String,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      tags: json['tags'] as Map<String, dynamic>?,
      notify: json['notify'] as bool?,
      parser: json['parser'] as String?,
    );

Map<String, dynamic> _$$_LogEntityToJson(_$_LogEntity instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'event': instance.event,
      'description': instance.description,
      'icon': instance.icon,
      'tags': instance.tags,
      'notify': instance.notify,
      'parser': instance.parser,
    };
