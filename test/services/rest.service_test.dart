// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

// 🌎 Project imports:
import 'package:starter/services/services.dart';

// Test Data:
const testBaseUrl = 'http://www.example.com';
const testPath = '/test';
const testHeaders = {'Content-Type': 'application/json'};
const testData = {'data': 'sample data'};
const testSuccess = {'message': 'Success'};
const testError = {'message': 'Error'};
final dioAdapter = DioAdapter(
  dio: Dio(
    BaseOptions(
      baseUrl: testBaseUrl,
      headers: testHeaders,
    ),
  ),
);

void main() {
  group('Rest Service Tests', () {
    group('Test Post Actions', testPostActions);
    group('Test Get Actions', testGetActions);
    group('Test Put Actions', testPutActions);
    group('Test Delete Actions', testDeleteActions);
  });
}

void testPostActions() {
  group('Given', () {
    group('When', () {
      test('Then I expect test to pass', () async {
        dioAdapter.onPost(
          testPath,
          (request) => request.reply(201, testSuccess),
          headers: testHeaders,
          data: testData,
        );

        final service = RestService(dio: dioAdapter.dio);
        final response = await service.create(testPath, testData);

        expect(response, testSuccess);
      });
    });
  });
}

void testGetActions() {
  group('Given', () {
    group('When', () {
      test('Then I expect test to pass', () async {
        dioAdapter.onGet(
          testPath,
          (request) => request.reply(200, testSuccess),
          queryParameters: {},
        );

        final service = RestService(dio: dioAdapter.dio);
        final response = await service.read(testPath);

        expect(response, testSuccess);
      });
    });
  });
}

void testPutActions() {
  group('Given', () {
    group('When', () {
      test('Then I expect test to pass', () async {
        dioAdapter.onPut(
          testPath,
          (request) => request.reply(201, testSuccess),
          headers: testHeaders,
          data: testData,
          queryParameters: {},
        );

        final service = RestService(dio: dioAdapter.dio);
        final response = await service.update(testPath, params: testData);

        expect(response, testSuccess);
      });
    });
  });
}

void testDeleteActions() {
  group('Given', () {
    group('When', () {
      test('Then I expect test to pass', () async {
        dioAdapter.onDelete(
          testPath,
          (request) => request.reply(201, testSuccess),
          headers: testHeaders,
          data: null,
          queryParameters: {},
        );

        final service = RestService(dio: dioAdapter.dio);
        final response = await service.delete(testPath);

        expect(response, testSuccess);
      });
    });
  });
}
