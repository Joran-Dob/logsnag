import 'package:freezed_annotation/freezed_annotation.dart';

part 'insight_entity.freezed.dart';
part 'insight_entity.g.dart';

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
@freezed
class InsightEntity with _$InsightEntity {
  /// Creates a new instance of [InsightEntity]
  @Assert(
    'value is int || value is String || value is bool',
    'value should be int, string or bool',
  )
  factory InsightEntity({
    required String title,
    required dynamic value,
    String? icon,
  }) = _InsightEntity;

  /// Creates a new instance of [InsightEntity] from JSON
  factory InsightEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InsightEntityFromJson(json);
}
