// ignore_for_file: prefer_const_constructors
import 'package:http/http.dart';
import 'package:logsnag/logsnag.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockClient extends Mock implements Client {
  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    return StreamedResponse(
      Stream.value([]),
      200,
    );
  }
}

void main() {
  group('LogSnag', () {
    final logsnag = LogSnag(
      project: 'test',
      token: 'test',
      httpClient: MockClient(),
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
