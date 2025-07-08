//
// ignore_for_file: prefer_const_constructors

import 'package:ht_shared/ht_shared.dart';
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
    final mockMetadataJson = {
      'timestamp': '2024-01-01T12:00:00.000Z', // Changed to UTC format
      'requestId': 'req-123',
    };

    final successResponse = SuccessApiResponse<String>(
      data: mockData,
      metadata: mockMetadata,
    );

    final successResponseWithoutMetadata = SuccessApiResponse<String>(
      data: mockData,
      metadata: ResponseMetadata(
        timestamp: DateTime.utc(2023),
        requestId: 'default-req-id',
      ),
    );

    final successResponseJson = {
      'data': mockData,
      'metadata': mockMetadataJson,
    };

    final successResponseWithoutMetadataJson = {
      'data': mockData,
      'metadata': {
        'timestamp': '2023-01-01T00:00:00.000Z',
        'requestId': 'default-req-id',
      },
    };

    test('can be instantiated with data only', () {
      expect(successResponseWithoutMetadata, isNotNull);
      expect(successResponseWithoutMetadata.data, mockData);
      // metadata is now required, so it will not be null.
      // The test case name "can be instantiated with data only" might be misleading
      // as metadata is always present.
    });

    test('can be instantiated with data and metadata', () {
      expect(successResponse, isNotNull);
      expect(successResponse.data, mockData);
      expect(successResponse.metadata, mockMetadata);
    });

    group('fromJson', () {
      test('parses correctly with metadata', () {
        final response = SuccessApiResponse.fromJson(
          successResponseJson,
          _fromJsonString,
        );
        expect(response, equals(successResponse));
      });

      test('parses correctly with default metadata from JSON', () {
        final response = SuccessApiResponse.fromJson(
          successResponseWithoutMetadataJson,
          _fromJsonString,
        );
        expect(response, equals(successResponseWithoutMetadata));
      });

      test('parses correctly when metadata key is omitted (uses default)', () {
        final jsonWithoutMetadataKey = {
          'data': mockData,
          'metadata': {
            'timestamp': '2023-01-01T00:00:00.000Z',
            'requestId': 'default-req-id',
          },
        };
        final response = SuccessApiResponse.fromJson(
          jsonWithoutMetadataKey,
          _fromJsonString,
        );
        // Expect it to use the default metadata if not provided in JSON
        expect(response, equals(successResponseWithoutMetadata));
      });
    });

    group('toJson', () {
      test('serializes correctly with metadata', () {
        final json = successResponse.toJson(_toJsonString);
        expect(json, equals(successResponseJson));
      });

      test('serializes correctly with default metadata', () {
        final json = successResponseWithoutMetadata.toJson(_toJsonString);
        expect(json, equals(successResponseWithoutMetadataJson));
      });
    });

    group('Equatable', () {
      test('instances with same data and metadata are equal', () {
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
        expect(response1.hashCode, isNot(equals(response2.hashCode)));
      });

      test('instances with different metadata are not equal', () {
        final response1 = SuccessApiResponse<String>(
          data: mockData,
          metadata: mockMetadata,
        );
        final response2 = SuccessApiResponse<String>(
          data: mockData,
          metadata: ResponseMetadata(
            timestamp: DateTime.utc(2024, 1, 1, 13), // Different time
            requestId: 'req-456',
          ),
        );
        expect(response1, isNot(equals(response2)));
        expect(response1.hashCode, isNot(equals(response2.hashCode)));
      });

      // Removed test 'instances with null vs non-null metadata are not equal'
      // as metadata is now always required and non-null.
    });

    group('copyWith', () {
      test('copies instance without changes', () {
        final copiedResponse = successResponse.copyWith();
        expect(copiedResponse, equals(successResponse));
        expect(identical(copiedResponse, successResponse), isFalse);
      });

      test('copies instance updating data', () {
        const newData = 'New Data';
        final copiedResponse = successResponse.copyWith(data: newData);
        expect(copiedResponse.data, equals(newData));
        expect(copiedResponse.metadata, equals(successResponse.metadata));
        expect(copiedResponse, isNot(equals(successResponse)));
      });

      test('copies instance updating metadata', () {
        final newMetadata = ResponseMetadata(
          timestamp: DateTime.utc(2025),
          requestId: 'new-req',
        );
        final copiedResponse = successResponse.copyWith(metadata: newMetadata);
        expect(copiedResponse.data, equals(successResponse.data));
        expect(copiedResponse.metadata, equals(newMetadata));
        expect(copiedResponse, isNot(equals(successResponse)));
      });

      test('copies instance updating both data and metadata', () {
        const newData = 'New Data Again';
        final newMetadata = ResponseMetadata(
          timestamp: DateTime.utc(2026),
          requestId: 'another-req',
        );
        final copiedResponse = successResponse.copyWith(
          data: newData,
          metadata: newMetadata,
        );
        expect(copiedResponse.data, equals(newData));
        expect(copiedResponse.metadata, equals(newMetadata));
        expect(copiedResponse, isNot(equals(successResponse)));
      });

      // The copyWith method for SuccessApiResponse now requires metadata to be non-null.
      // The previous test case for setting metadata to null is no longer applicable.
    });
  });
}
