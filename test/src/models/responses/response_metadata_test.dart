import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('ResponseMetadata', () {
    final timestamp = DateTime.utc(2024, 5, 20, 10, 30);
    const requestId = 'req-12345';

    final metadata = ResponseMetadata(
      requestId: requestId,
      timestamp: timestamp,
    );

    final metadataJson = {
      'requestId': requestId,
      'timestamp': timestamp.toIso8601String(),
    };

    test('can be instantiated', () {
      expect(metadata, isA<ResponseMetadata>());
      expect(metadata.requestId, requestId);
      expect(metadata.timestamp, timestamp);
    });

    group('serialization', () {
      test('fromJson creates correct object from valid JSON', () {
        final fromJson = ResponseMetadata.fromJson(metadataJson);
        expect(fromJson, equals(metadata));
      });

      test('toJson produces correct JSON map', () {
        final json = metadata.toJson();
        expect(json, equals(metadataJson));
      });

      test(
        'fromJson throws CheckedFromJsonException for missing requestId',
        () {
          final json = {'timestamp': timestamp.toIso8601String()};
          expect(
            () => ResponseMetadata.fromJson(json),
            throwsA(isA<CheckedFromJsonException>()),
          );
        },
      );

      test(
        'fromJson throws CheckedFromJsonException for missing timestamp',
        () {
          final json = {'requestId': requestId};
          expect(
            () => ResponseMetadata.fromJson(json),
            throwsA(isA<CheckedFromJsonException>()),
          );
        },
      );
    });

    group('copyWith', () {
      test('creates an identical copy with no new values', () {
        final copied = metadata.copyWith();
        expect(copied, equals(metadata));
        expect(identical(copied, metadata), isFalse);
      });

      test('creates a copy with an updated requestId', () {
        const newRequestId = 'req-67890';
        final copied = metadata.copyWith(requestId: newRequestId);
        expect(copied.requestId, newRequestId);
        expect(copied.timestamp, metadata.timestamp);
      });

      test('creates a copy with an updated timestamp', () {
        final newTimestamp = DateTime.utc(2025);
        final copied = metadata.copyWith(timestamp: newTimestamp);
        expect(copied.timestamp, newTimestamp);
        expect(copied.requestId, metadata.requestId);
      });
    });

    group('Equatable', () {
      test('instances with the same values are equal', () {
        final instance1 = ResponseMetadata(
          requestId: requestId,
          timestamp: timestamp,
        );
        final instance2 = ResponseMetadata(
          requestId: requestId,
          timestamp: timestamp,
        );
        expect(instance1, equals(instance2));
        expect(instance1.hashCode, equals(instance2.hashCode));
      });

      test('instances with different values are not equal', () {
        final instance1 = ResponseMetadata(
          requestId: 'req-1',
          timestamp: timestamp,
        );
        final instance2 = ResponseMetadata(
          requestId: 'req-2',
          timestamp: timestamp,
        );
        expect(instance1, isNot(equals(instance2)));
        expect(instance1.hashCode, isNot(equals(instance2.hashCode)));
      });

      test('props list is correct', () {
        expect(metadata.props, [requestId, timestamp]);
      });
    });
  });
}
