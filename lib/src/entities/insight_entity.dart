/// Insight entity
/// [title] Insight title
/// [value] Insight value
/// [icon] Insight icon
///
/// Example:
/// ```dart
/// final insight = InsightEntity(
///   title: 'Insight title',
///   value: 1,
///   icon: '🚀',
/// );
/// ```
class InsightEntity {
  /// Creates a new instance of [InsightEntity]
  InsightEntity({
    required this.title,
    required this.value,
    this.icon,
  }) : assert(
          value is int || value is String || value is bool,
          'value should be int, string or bool',
        );

  /// Insight title
  /// Example: 'Insight title'
  /// Required: true
  /// Type: String
  final String title;

  /// Insight value
  /// Example: 1
  /// Required: true
  /// Type: int, string or bool
  /// Note: value should be int, string or bool
  final dynamic value;

  /// Insight icon
  /// Example: '🚀'
  /// Required: false
  /// Type: String
  /// Note: icon should be a single valid unicode emoji
  /// See: https://unicode.org/emoji/charts/full-emoji-list.html
  final String? icon;
}

/// Extension methods for [InsightEntity]
/// [InsightEntity] to JSON
extension InsightEntityExtension on InsightEntity {
  /// Converts [InsightEntity] to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'value': value,
      'icon': icon,
    };
  }
}
