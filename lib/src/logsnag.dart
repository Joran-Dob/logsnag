import 'package:http/http.dart';
import 'package:logsnag/src/client/logsnag_api.dart';
import 'package:logsnag/src/entities.dart';

/// LogSnag is a Dart library for sending logs to LogSnag
/// https://logsnag.com
/// https://docs.logsnag.com/api
///
/// Example:
///
/// ```dart
/// import 'package:logsnag/logsnag.dart';
///
/// void main() async {
///  final logSnag = LogSnag(
///   project: 'project',
///   token: 'token',
///  );
///
///  await logSnag.publish(
///   channel: 'channel',
///   event: 'event',
///   description: 'description',
///   icon: 'icon',
///   tags: {
///    'tag': 'tag',
///   },
///   notify: true,
///  );
///
///  await logSnag.insight(
///   title: 'title',
///   value: 'value',
///   icon: 'icon',
///  );
/// ```
///
/// See also:
///
/// * [LogSnag]
/// * [LogSnag.publish]
/// * [LogSnag.insight]
///
class LogSnag {
  /// Create a new LogSnag instance
  LogSnag({
    required String project,
    required String token,
    Client? httpClient,
  })  : _project = project,
        _token = token {
    _api = LogSnapApi(
      httpClient: httpClient ?? Client(),
      project: _project,
      token: _token,
    );
  }

  /// The LogSnag API client
  late LogSnapApi _api;

  /// The LogSnag project token
  /// https://docs.logsnag.com/api/authentication
  final String _token;

  /// The LogSnag project reference
  /// https://docs.logsnag.com/api/authentication
  final String _project;

  /// Call the LogSnag API to publish a log
  /// https://docs.logsnag.com/endpoints/log
  Future<void> log({
    required String channel,
    required String event,
    String? description,
    String? icon,
    Map<String, dynamic>? tags,
    bool? notify,
  }) {
    return _api.sendLog(
      LogEntity(
        channel: channel,
        event: event,
        description: description,
        icon: icon,
        tags: tags,
        notify: notify,
        parser: 'text',
      ),
    );
  }

  /// Call the LogSnag API to publish an insight
  /// https://docs.logsnag.com/endpoints/insight
  Future<void> insight({
    required String title,
    required String value,
    required String icon,
  }) {
    return _api.sendInsight(
      InsightEntity(
        title: title,
        value: value,
        icon: icon,
      ),
    );
  }
}
