import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_entity.freezed.dart';
part 'log_entity.g.dart';

/// Log entity
/// [channel] Channel to Log to
/// [event] Event to Log
/// [description] Event description
/// [icon] Event icon
/// [tags] Event tags
/// [notify] Whether to notify subscribers
/// [parser] Parser to use
///
/// Example:
/// ```dart
/// final Log = LogEntity(
///  channel: 'channel',
///  event: 'event',
///  description: 'description',
///  icon: '🚀',
///  tags: [
///   LogTagEntity(
///    name: 'tag',
///    value: 'value',
///   ),
///  ],
///  notify: true,
///  parser: 'parser',
/// );
/// ```
@freezed
class LogEntity with _$LogEntity {
  /// Creates a new instance of [LogEntity]
  factory LogEntity({
    required String channel,
    required String event,
    String? description,
    String? icon,
    Map<String, dynamic>? tags,
    bool? notify,
    String? parser,
  }) = _LogEntity;

  /// Creates a new instance of [LogEntity] from JSON
  factory LogEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LogEntityFromJson(json);
}
