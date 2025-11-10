import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

// Helper functions for String serialization/deserialization
String _fromJsonString(Object? json) => json! as String;
Object? _toJsonString(String value) => value;

void main() {
  group('SuccessApiResponse', () {
    const mockData = 'Test Data';
    final mockMetadata = ResponseMetadata(
      timestamp: DateTime.utc(2024, 1, 1, 12),
      requestId: 'req-123',
    );

    final successResponse = SuccessApiResponse<String>(
      data: mockData,
      metadata: mockMetadata,
    );

    final successResponseJson = {
      'data': mockData,
      'metadata': mockMetadata.toJson(),
    };

    test('can be instantiated', () {
      expect(successResponse, isA<SuccessApiResponse<String>>());
      expect(successResponse.data, mockData);
      expect(successResponse.metadata, mockMetadata);
    });

    group('serialization', () {
      test('fromJson creates correct object from valid JSON', () {
        final response = SuccessApiResponse.fromJson(
          successResponseJson,
          _fromJsonString,
        );
        expect(response, equals(successResponse));
      });

      test('toJson produces correct JSON map', () {
        final json = successResponse.toJson(_toJsonString);
        expect(json, equals(successResponseJson));
      });

      test('fromJson throws CheckedFromJsonException for missing data', () {
        final json = {'metadata': mockMetadata.toJson()};
        expect(
          () => SuccessApiResponse.fromJson(json, _fromJsonString),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('fromJson throws CheckedFromJsonException for missing metadata', () {
        final json = {'data': mockData};
        expect(
          () => SuccessApiResponse.fromJson(json, _fromJsonString),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });

    group('copyWith', () {
      test('creates an identical copy with no new values', () {
        final copiedResponse = successResponse.copyWith();
        expect(copiedResponse, equals(successResponse));
        expect(identical(copiedResponse, successResponse), isFalse);
      });

      test('creates a copy with updated data', () {
        const newData = 'New Data';
        final copiedResponse = successResponse.copyWith(data: newData);
        expect(copiedResponse.data, equals(newData));
        expect(copiedResponse.metadata, equals(successResponse.metadata));
      });

      test('creates a copy with updated metadata', () {
        final newMetadata = ResponseMetadata(
          timestamp: DateTime.utc(2025),
          requestId: 'new-req',
        );
        final copiedResponse = successResponse.copyWith(metadata: newMetadata);
        expect(copiedResponse.data, equals(successResponse.data));
        expect(copiedResponse.metadata, equals(newMetadata));
      });
    });

    group('Equatable', () {
      test('instances with the same values are equal', () {
        final response1 = SuccessApiResponse<String>(
          data: mockData,
          metadata: mockMetadata,
        );
        final response2 = SuccessApiResponse<String>(
          data: mockData,
          metadata: mockMetadata,
        );
        expect(response1, equals(response2));
        expect(response1.hashCode, equals(response2.hashCode));
      });

      test('instances with different data are not equal', () {
        final response1 = SuccessApiResponse<String>(
          data: 'Data 1',
          metadata: mockMetadata,
        );
        final response2 = SuccessApiResponse<String>(
          data: 'Data 2',
          metadata: mockMetadata,
        );
        expect(response1, isNot(equals(response2)));
      });

      test('instances with different metadata are not equal', () {
        final response1 = SuccessApiResponse<String>(
          data: mockData,
          metadata: mockMetadata,
        );
        final response2 = SuccessApiResponse<String>(
          data: mockData,
          metadata: ResponseMetadata(
            timestamp: DateTime.utc(2024, 1, 1, 13),
            requestId: 'req-456',
          ),
        );
        expect(response1, isNot(equals(response2)));
      });

      test('props list is correct', () {
        expect(successResponse.props, [mockData, mockMetadata]);
      });
    });
  });
}
