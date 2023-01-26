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
class LogEntity {
  /// Creates a new instance of [LogEntity]
  LogEntity({
    required this.channel,
    required this.event,
    this.description,
    this.icon,
    this.tags,
    this.notify,
    this.parser,
  });

  /// Channel to Log to
  /// Example: 'channel'
  /// Required: true
  /// Type: String
  /// Note: channel should be a valid channel name
  final String channel;

  /// Event to Log
  /// Example: 'event'
  /// Required: true
  /// Type: String
  /// Note: event should be a valid event name
  final String event;

  /// Event description
  /// Example: 'description'
  /// Required: false
  /// Type: String
  final String? description;

  /// Event icon
  /// Example: '🚀'
  /// Required: false
  /// Type: String
  /// Note: icon should be a single valid unicode emoji
  /// See: https://unicode.org/emoji/charts/full-emoji-list.html
  final String? icon;

  /// Event tags
  /// Example: [
  /// {
  ///   'name': 'tag',
  ///   'value': 'value',
  /// },
  /// ]
  /// Required: false
  /// Type: List<LogTagEntity>
  final Map<String, dynamic>? tags;

  /// Whether to notify subscribers
  /// Example: true
  /// Required: false
  /// Type: bool
  final bool? notify;

  /// Parser to use
  /// Example: 'text'
  /// Required: false
  /// Type: String
  /// Note: can be one of: markdown, text
  final String? parser;
}

/// Extension methods for [LogEntity]
/// [LogEntity] to JSON
extension LogEntityExtension on LogEntity {
  /// Converts [InsightEntity] to JSON
  Map<String, dynamic> toJson() {
    return {
      'channel': channel,
      'event': event,
      'description': description,
      'icon': icon,
      'tags': tags,
      'notify': notify,
      'parser': parser,
    };
  }
}
