// ignore_for_file: prefer_const_constructors
import 'package:logsnag/logsnag.dart';
import 'package:test/test.dart';

void main() {
  group('LogSnag', () {
    final logsnag = LogSnag(
      project: 'test',
      token: 'test',
    );
    test('can be instantiated', () {
      expect(logsnag, isNotNull);
    });
    test('can log', () {
      expect(
        logsnag.log(
          channel: 'test',
          event: 'test',
          description: 'test',
          icon: 'test',
          tags: {},
          notify: true,
        ),
        completes,
      );
    });
    test('can insight', () {
      expect(
        logsnag.insight(
          title: 'test',
          value: 'test',
          icon: 'test',
        ),
        completes,
      );
    });
  });
}
