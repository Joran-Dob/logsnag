// ignore_for_file: cascade_invocations
import 'package:logsnag/logsnag.dart';

void main() {
  final logSnag = LogSnag(
    project: 'dart-package-test',
    token: '1c855b96c5c06211fa4166ea78468b12',
  );

  logSnag.insight(
    title: 'Test',
    value: 'Test',
    icon: '👋',
  );

  logSnag.log(
    channel: 'test-channel',
    event: 'User Joined',
    description: 'Email: john@example.com',
    icon: '👋',
    tags: {
      'name': 'john doe',
      'email': 'john@example.com',
    },
    notify: true,
  );
}
