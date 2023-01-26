import 'dart:convert';

import 'package:http/http.dart';
import 'package:logsnag/src/entities/insight_entity.dart';
import 'package:logsnag/src/entities/log_entity.dart';

/// API client to communicate with the LogSnag API
class LogSnapApi {
  /// Creates a new instance of [LogSnapApi]
  /// [httpClient] [Client] to use for HTTP requests
  /// [token] LogSnag API token
  /// [project] LogSnag project name
  ///
  /// Example:
  /// ```dart
  /// final client = LogSnapApi(
  ///  httpClient: Client(),
  ///  token: "",
  ///  project: "",
  /// );
  /// ```
  LogSnapApi({
    required Client httpClient,
    required String token,
    required String project,
  })  : _httpClient = httpClient,
        _token = token,
        _project = project;

  final Client _httpClient;
  final String _token;
  final String _project;

  static const String _host = 'https://api.logsnag.com/v1';

  /// Sends a [BaseRequest] after attaching HTTP headers
  Future<Response> _send(BaseRequest request) async {
    request.headers['Content-Type'] = 'application/json';
    request.headers['Authorization'] = _authorizationHeader;

    final streamedResponse = await _httpClient.send(request);
    return Response.fromStream(streamedResponse);
  }

  /// Creates authorization header
  String get _authorizationHeader {
    return 'Bearer $_token';
  }

  /// Get project name
  String get _projectName {
    return _project;
  }

  /// Formats body to include project name
  /// [body] body to format
  String _formatBody(Map<String, dynamic> body) {
    print({
      ...body,
      'project': _projectName,
    });
    return jsonEncode({
      ...body,
      'project': _projectName,
    });
  }

  /// Sends insight to LogSnag
  /// [body] [InsightEntity] body
  Future<void> sendInsight(InsightEntity body) async {
    final response = await _send(
      Request('POST', Uri.parse('$_host/insight'))
        ..body = _formatBody(
          body.toJson(),
        ),
    );
    if (response.statusCode == 200) {
      // success 🎉
      return;
    }
    throw LogSnagApiException(response: response);
  }

  /// Sends log to LogSnag
  /// [body] [LogEntity] body
  Future<void> sendLog(LogEntity body) async {
    final response = await _send(
      Request('POST', Uri.parse('$_host/log'))
        ..body = _formatBody(
          body.toJson(),
        ),
    );
    if (response.statusCode == 200) {
      // success 🎉
      return;
    }
    throw LogSnagApiException(response: response);
  }
}

/// Exception thrown when the API returns a exception
class LogSnagApiException implements Exception {
  /// Creates a new [LogSnagApiException]
  const LogSnagApiException({this.message, this.response});

  /// The error message from the server
  String? get messageFromServer {
    try {
      final json = jsonDecode(response?.body ?? '') as Map?;
      final message = json?['message'] as String?;
      return '[LogSnag][error] ${message ?? '<no message>'}';
    } catch (_) {
      // ignore
    }
    return response?.body;
  }

  /// The error message from the server
  final String? message;

  /// The [Response] from the server
  final Response? response;

  @override
  String toString() {
    return 'LogSnapApiException{'
        '"$message", '
        'endpoint: ${response?.request?.url.path}, '
        'code: ${response?.statusCode}, '
        'resp: $messageFromServer'
        '}';
  }
}
